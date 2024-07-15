`include"core_struct.vh"
module ALU_bsel (
    input CorePack::data_t imm,
    input CorePack::data_t read_data_2,
    input CorePack::alu_bsel_op_enum alu_bsel,
    output CorePack::data_t b
);

    import CorePack::*;

    data_t data [3:0];
    assign data[BSEL0]=64'b0;
    assign data[BSEL_REG]=read_data_2;
    assign data[BSEL_IMM]=imm;
    assign data[BSEL3]=64'b0;

    assign b=data[alu_bsel];
    
endmodule