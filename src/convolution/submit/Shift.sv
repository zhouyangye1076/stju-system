`include"conv_struct.vh"
module Shift (
    input clk,
    input rst,
    input Conv::data_t in_data,
    input in_valid,
    output reg in_ready,

    output Conv::data_vector data,
    output reg out_valid,
    input out_ready
);

    typedef enum logic {RDATA, TDATA} fsm_state;
    fsm_state state_reg;
    Conv::data_t data_reg [Conv::LEN-1:0];

    integer i;
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            for(i=0;i<Conv::LEN;i=i+1)begin
                data_reg[i] <= {Conv::WIDTH{1'b0}};
            end
            state_reg <= RDATA;
            in_ready <= 1'b1;
            out_valid <= 1'b0;
        end else begin
            case(state_reg)
                RDATA:begin
                    if(in_valid & in_ready)begin
                        for(i=0;i<Conv::LEN-1;i++)begin
                            data_reg[i] <= data_reg[i+1];
                        end
                        data_reg[Conv::LEN-1] <= in_data;
                        in_ready <= 1'b0;
                        out_valid <= 1'b1;
                        state_reg <= TDATA;
                    end
                end 
                TDATA:begin
                    if(out_valid & out_ready)begin
                        in_ready <= 1'b1;
                        out_valid <= 1'b0;
                        state_reg <= RDATA;
                    end
                end
            endcase
        end
    end

    generate
        for(genvar j=0;j<Conv::LEN;j=j+1)begin
            assign data.data[j] = data_reg[j];
        end
    endgenerate

endmodule