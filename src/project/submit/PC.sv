`include"core_struct.vh"
module PC (
    input logic clk,
    input logic rst,
    input logic stall,
    input logic npc_sel,
    input logic br_taken,
    input CorePack::addr_t alu_res,
    output CorePack::addr_t pc,
    output CorePack::data_t pc_4,
    output CorePack::addr_t next_pc
);

    import CorePack::*;

    always_comb begin
        if(rst) next_pc = {xLen{1'b0}};
        else if(stall) next_pc = pc;
        else if(npc_sel|br_taken) next_pc = alu_res;
        else next_pc = pc_4;
    end

    always_ff@(posedge clk or posedge rst)begin
        if(rst) pc <= {xLen{1'b0}};
        else pc <= next_pc;
    end
    
    assign pc_4 = pc + {{(xLen-8){1'b0}} ,8'd4};
    
endmodule