`include "core_struct.vh"
module WB_sel (
    input CorePack::data_t alu_res,
    input CorePack::data_t mem_trunc,
    input CorePack::data_t pc_4,
    input CorePack::wb_sel_op_enum wb_sel,
    output CorePack::data_t data_wb
);
    import CorePack::*;

    data_t data [3:0];
    assign data[WB_SEL0]=64'b0;
    assign data[WB_SEL_ALU]=alu_res;
    assign data[WB_SEL_MEM]=mem_trunc;
    assign data[WB_SEL_PC]=pc_4;

    assign data_wb=data[wb_sel];
    
endmodule