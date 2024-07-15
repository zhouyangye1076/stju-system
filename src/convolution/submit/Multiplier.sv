`include"conv_struct.vh"
module Multiplier #(
    parameter LEN = 32
) (
    input clk,
    input rst,
    input [LEN-1:0] multiplicand,
    input [LEN-1:0] multiplier,
    input start,
    
    output [LEN*2-1:0] product,
    output finish
);

    localparam PRODUCT_LEN = LEN*2;
    logic [LEN-1:0] multiplicand_reg;
    logic [PRODUCT_LEN-1:0] product_reg;

    localparam CNT_LEN = $clog2(LEN);
    localparam CNT_NUM = LEN - 1;
    typedef enum logic [1:0] {IDLE, WORK, FINAL} fsm_state;
    fsm_state fsm_state_reg;
    logic [CNT_LEN-1:0] work_cnt;

    logic [LEN-2:0] low_product_result;
    logic [LEN:0] high_product_result;
    assign low_product_result = product_reg[LEN-1:1];
    assign high_product_result = {1'b0,product_reg[PRODUCT_LEN-1:LEN]} + {1'b0,multiplicand_reg&{LEN{product_reg[0]}}};

    always_ff@(posedge clk or posedge rst)begin
        if(rst)begin
            multiplicand_reg <= {LEN{1'b0}};
            product_reg <= {PRODUCT_LEN{1'b0}};
            fsm_state_reg <= IDLE;
            work_cnt <= {CNT_LEN{1'b0}};
        end else begin
            case(fsm_state_reg)
                IDLE:begin
                    if(start)begin
                        fsm_state_reg <= WORK;
                        work_cnt <= CNT_NUM[CNT_LEN-1:0];
                        product_reg <= {{LEN{1'b0}}, multiplier};
                        multiplicand_reg <= multiplicand;
                    end
                end
                WORK:begin
                    product_reg <= {high_product_result, low_product_result};
                    work_cnt <= work_cnt - {{(CNT_LEN-1){1'b0}},1'b1};
                    if(work_cnt == {CNT_LEN{1'b0}})begin
                        fsm_state_reg <= FINAL;
                    end
                end
                default:begin
                    fsm_state_reg <= IDLE;
                end
            endcase
        end
    end

    assign product = product_reg;
    assign finish = fsm_state_reg == FINAL;
    
endmodule