`include"mem_ift.vh"
`include"bus_struct.vh"
module Mem_InterConnect_1To2 #(
    parameter [64*2-1:0] MEM_BEGIN = {64'h10000000, 64'h0},
    parameter [64*2-1:0] MEM_LENGTH = {64'h100, 64'h1000}
) (
    input clk,
    input rstn,
    Mem_ift.Slave master0,
    Mem_ift.Master slave0,
    Mem_ift.Master slave1
);

    import BusPack::*;

    `Dummy_Mem_ift(dummy_ift, master0.DATA_WIDTH, master0.ADDR_WIDTH)

    localparam SLAVE_NUM = 2;
    logic [SLAVE_NUM:0] is_r_slave /* verilator split_var */;
    logic [SLAVE_NUM:0] is_w_slave /* verilator split_var */;
    logic [SLAVE_NUM:0] is_r_slave_reg;
    logic [SLAVE_NUM:0] is_w_slave_reg;

    Mem_ift #(
        .DATA_WIDTH(master0.DATA_WIDTH),
        .ADDR_WIDTH(master0.ADDR_WIDTH)
    ) slave_ift[SLAVE_NUM:0] ();

    generate
    for(genvar i=0;i<SLAVE_NUM+1;i=i+1)begin:slave_request_2_reply

        always_ff@(posedge clk or negedge rstn)begin
            if(~rstn)begin
                is_r_slave_reg[i] <= 1'b0;
            end else if(slave_ift[i].r_request_valid & slave_ift[i].r_request_ready)begin
                is_r_slave_reg[i] <= 1'b1;
            end else if(slave_ift[i].r_reply_valid & slave_ift[i].r_reply_ready)begin
                is_r_slave_reg[i] <= 1'b0;
            end
        end

        always_ff@(posedge clk or negedge rstn)begin
            if(~rstn)begin
                is_w_slave_reg[i] <= 1'b0;
            end else if(slave_ift[i].w_request_valid & slave_ift[i].w_request_ready)begin
                is_w_slave_reg[i] <= 1'b1;
            end else if(slave_ift[i].w_reply_valid & slave_ift[i].w_reply_ready)begin
                is_w_slave_reg[i] <= 1'b0;
            end
        end
    end
    endgenerate

    always_comb begin
        `MemLink_Connect(slave_ift[0], slave0)
        `MemLink_Connect(slave_ift[1], slave1)
    end

    generate
        for(genvar i=0;i<SLAVE_NUM;i=i+1)begin:is_slave_set
            /* verilator lint_off UNSIGNED */
            assign is_r_slave[i] = (master0.r_request_bits.raddr >= MEM_BEGIN[(i+1)*64-1:i*64]) 
                & (master0.r_request_bits.raddr < MEM_BEGIN[(i+1)*64-1:i*64] + MEM_LENGTH[(i+1)*64-1:i*64]);
            assign is_w_slave[i] = (master0.w_request_bits.waddr >= MEM_BEGIN[(i+1)*64-1:i*64]) 
                & (master0.w_request_bits.waddr < MEM_BEGIN[(i+1)*64-1:i*64] + MEM_LENGTH[(i+1)*64-1:i*64]);
            /* verilator lint_on UNSIGNED */
        end
    endgenerate
    assign is_r_slave[SLAVE_NUM] = ~|is_r_slave[SLAVE_NUM-1:0];
    assign is_w_slave[SLAVE_NUM] = ~|is_w_slave[SLAVE_NUM-1:0];
    
    generate
    for(genvar i=0;i<=SLAVE_NUM;i=i+1)begin:slave_link
        always_comb begin
            `MemLink_r_M2S_choose(is_r_slave[i], is_r_slave_reg[i], slave_ift[i], master0, dummy_ift)
            `MemLink_w_M2S_choose(is_w_slave[i], is_w_slave_reg[i], slave_ift[i], master0, dummy_ift)
        end
    end
    endgenerate

    always_comb begin
        case(is_r_slave)
            3'b001:`MemLink_r_request_S2M(master0, slave_ift[0])
            3'b010:`MemLink_r_request_S2M(master0, slave_ift[1])
            default:`MemLink_r_request_S2M(master0, slave_ift[2])
        endcase
    end

    always_comb begin
        case(is_r_slave_reg)
            3'b001:`MemLink_r_reply_S2M(master0, slave_ift[0])
            3'b010:`MemLink_r_reply_S2M(master0, slave_ift[1])
            default:`MemLink_r_reply_S2M(master0, slave_ift[2])
        endcase
    end

    always_comb begin
        case(is_w_slave)
            3'b001:`MemLink_w_request_S2M(master0, slave_ift[0])
            3'b010:`MemLink_w_request_S2M(master0, slave_ift[1])
            default:`MemLink_w_request_S2M(master0, slave_ift[2])
        endcase
    end

    always_comb begin
        case(is_w_slave_reg)
            3'b001:`MemLink_w_reply_S2M(master0, slave_ift[0])
            3'b010:`MemLink_w_reply_S2M(master0, slave_ift[1])
            default:`MemLink_w_reply_S2M(master0, slave_ift[2])
        endcase
    end

    Mem_TrapUnit trap_unit(
        .clk(clk),
        .rstn(rstn),
        .mem_ift(slave_ift[SLAVE_NUM])
    );

endmodule

module Mem_TrapUnit(
    input clk,
    input rstn,
    Mem_ift.Slave mem_ift
);
    import BusPack::*;
    // read request and reply
    `Mem_Slave_Shank_Hand(mem_ift, r, clk)

    assign mem_ift_r_ready = ~mem_ift_r_busy | mem_ift_r_reply_fire;
    assign mem_ift_r_valid = mem_ift_r_busy;
    assign mem_ift.r_reply_bits = '{rdata:{mem_ift.DATA_WIDTH{1'b0}}, rresp:DECERR};


    // write request and reply
    `Mem_Slave_Shank_Hand(mem_ift, w, clk)

    assign mem_ift_w_ready =  ~mem_ift_w_busy | mem_ift_w_reply_fire;
    assign mem_ift_w_valid = mem_ift_w_busy;
    assign mem_ift.w_reply_bits = '{bresp:DECERR};
endmodule