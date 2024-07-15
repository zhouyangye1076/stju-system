`include"conv_struct.vh"
module ConvOperator(
    input clk,
    input rst,
    input Conv::data_vector kernel,
    input Conv::data_vector data,
    input in_valid,
    output reg in_ready,

    output Conv::result_t result,
    output reg out_valid,
    input out_ready
);

    localparam VECTOR_WIDTH = 2*Conv::WIDTH;
    typedef struct {
        Conv::result_t data;
        logic valid;
    } mid_vector;

    mid_vector vector_stage1 [Conv::LEN-1:0];
    mid_vector vector_stage2;

    typedef enum logic [1:0] {RDATA, WORK, TDATA} fsm_state;
    fsm_state state_reg;

    wire start;
    assign start = in_valid & in_ready;

    wire [Conv::LEN-1:0] finish;
    Conv::result_t product [Conv::LEN-1:0];

    generate
    for(genvar i=0;i<Conv::LEN;i=i+1)begin:mult
        Multiplier #(
            .LEN(Conv::WIDTH)
        ) mul (
            .clk(clk),
            .rst(rst),
            .multiplicand(data.data[i]),
            .multiplier(kernel.data[i]),
            .start(start),
            
            .product(product[i]),
            .finish(finish[i])
        );

        always_ff@( posedge clk or posedge rst)begin
            if(rst|start)begin
                vector_stage1[i].valid <= 1'b0;
                vector_stage1[i].data <= {VECTOR_WIDTH{1'b0}};
            end else if(finish[i])begin
                vector_stage1[i].valid <= 1'b1;
                vector_stage1[i].data <= product[i];
            end
        end
    end
    endgenerate

    Conv::result_t stage1_data [Conv::LEN-1:0];
    logic [Conv::LEN-1:0] stage1_valid;
    generate
    for(genvar i=0;i<Conv::LEN;i=i+1)begin
        assign stage1_valid[i] = vector_stage1[i].valid;
        assign stage1_data[i]  = vector_stage1[i].data;
    end
    endgenerate


    Conv::result_t add_tmp [Conv::LEN-1:1] /* verilator split_var */;
    generate
    for(genvar i=1;i<Conv::LEN;i=i+1)begin
        if(i<Conv::LEN/2)begin
            assign add_tmp[i] = add_tmp[i*2] + add_tmp[i*2+1];
        end else begin
            assign add_tmp[i] = stage1_data[(i-Conv::LEN/2)*2] + stage1_data[(i-Conv::LEN/2)*2+1]; 
        end
    end
    endgenerate

    
    always_ff@(posedge clk or posedge rst)begin
        if(rst|start)begin
            vector_stage2.valid <= 1'b0;
            vector_stage2.data <= {VECTOR_WIDTH{1'b0}};
        end else if(&stage1_valid)begin
            vector_stage2.valid <= 1'b1;
            vector_stage2.data  <= add_tmp[1];
        end
    end

    always@(posedge clk or posedge rst)begin
        if(rst)begin
            state_reg <= RDATA;
            in_ready <= 1'b1;
            out_valid <= 1'b0;
        end else begin
            case(state_reg)
                RDATA:begin
                    if(start)begin
                        in_ready <= 1'b0;
                        out_valid <= 1'b0;
                        state_reg <= WORK;
                    end
                end
                WORK:begin
                    if(vector_stage2.valid)begin
                        in_ready <= 1'b0;
                        out_valid <= 1'b1;
                        state_reg <= TDATA;
                    end
                end
                TDATA:begin
                    if(out_ready & out_valid)begin
                        in_ready <= 1'b1;
                        out_valid <= 1'b0;
                        state_reg <= RDATA;
                    end
                end
                default:begin
                    in_ready <= 1'b1;
                    out_valid <= 1'b0;
                    state_reg <= RDATA;
                end
            endcase
        end
    end

    assign result = vector_stage2.data;

endmodule