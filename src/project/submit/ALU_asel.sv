`include"core_struct.vh"
module ALU_asel (
    input CorePack::data_t pc,
    input CorePack::data_t read_data_1,
    input CorePack::alu_asel_op_enum alu_asel,
    output CorePack::data_t a
);
    import CorePack::*;

    data_t data [3:0];
    assign data[ASEL0]=64'b0;
    assign data[ASEL_REG]=read_data_1;
    assign data[ASEL_PC]=pc;
    assign data[ASEL3]=64'b0;

    assign a=data[alu_asel];
    
endmodule