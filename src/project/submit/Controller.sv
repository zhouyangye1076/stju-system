`include "core_struct.vh"
module controller (
    input CorePack::inst_t inst,
    output we_reg,
    output we_mem,
    output re_mem,
    output npc_sel,
    output CorePack::imm_op_enum immgen_op,
    output CorePack::alu_op_enum alu_op,
    output CorePack::cmp_op_enum cmp_op,
    output CorePack::alu_asel_op_enum alu_asel,
    output CorePack::alu_bsel_op_enum alu_bsel,
    output CorePack::wb_sel_op_enum wb_sel,
    output CorePack::mem_op_enum mem_op
);

    import CorePack::*;
    
    opcode_t opcode;
    assign opcode=inst[6:0];
    reg_ind_t rd;
    assign rd=inst[11:7];
    funct3_t funct3;
    assign funct3=inst[14:12];
    reg_ind_t rs1;
    assign rs1=inst[19:15];
    reg_ind_t rs2;
    assign rs2=inst[24:20];
    funct7_t funct7;
    assign funct7=inst[31:25];

    logic is_load;
    assign is_load=opcode==LOAD_OPCODE;
    logic is_imm;
    assign is_imm=opcode==IMM_OPCODE;
    logic is_auipc;
    assign is_auipc=opcode==AUIPC_OPCODE;
    logic is_immw;
    assign is_immw=opcode==IMMW_OPCODE;
    logic is_store;
    assign is_store=opcode==STORE_OPCODE;
    logic is_reg;
    assign is_reg=opcode==REG_OPCODE;
    logic is_lui;
    assign is_lui=opcode==LUI_OPCODE;
    logic is_regw;
    assign is_regw=opcode==REGW_OPCODE;
    logic is_branch;
    assign is_branch=opcode==BRANCH_OPCODE;
    logic is_jalr;
    assign is_jalr=opcode==JALR_OPCODE;
    logic is_jal;
    assign is_jal=opcode==JAL_OPCODE;

    assign we_reg=(rd!=5'b0)&(is_load|is_imm|is_auipc|is_immw|
        is_reg|is_lui|is_regw|is_jalr|is_jal);
    assign we_mem=is_store;
    assign re_mem=is_load;
    assign npc_sel=is_jal|is_jalr;

    assign immgen_op=imm_op_enum'(
        I_IMM&{3{is_load|is_imm|is_immw|is_jalr}}|
        S_IMM&{3{is_store}}|
        B_IMM&{3{is_branch}}|
        U_IMM&{3{is_lui|is_auipc}}|
        UJ_IMM&{3{is_jal}}
    );
    
    assign cmp_op=cmp_op_enum'(
        {3{is_branch}}&(
        CMP_EQ&{3{funct3==BEQ_FUNCT3}}|
        CMP_NE&{3{funct3==BNE_FUNCT3}}|
        CMP_LT&{3{funct3==BLT_FUNCT3}}|
        CMP_GE&{3{funct3==BGE_FUNCT3}}|
        CMP_LTU&{3{funct3==BLTU_FUNCT3}}|
        CMP_GEU&{3{funct3==BGEU_FUNCT3}})
    );
    
    assign alu_asel=alu_asel_op_enum'(
        ASEL_REG&{2{is_load|is_imm|is_immw|is_store|is_reg|is_regw|is_jalr}}|
        ASEL_PC&{2{is_auipc|is_branch|is_jal}}
    );

    assign alu_bsel=alu_bsel_op_enum'(
        BSEL_REG&{2{is_reg|is_regw}}|
        BSEL_IMM&{2{is_load|is_imm|is_auipc|is_immw|is_store|is_lui|is_branch|is_jal|is_jalr}}
    );
    
    assign wb_sel=wb_sel_op_enum'(
        WB_SEL_ALU&{2{is_imm|is_auipc|is_immw|is_reg|is_lui|is_regw}}|
        WB_SEL_MEM&{2{is_load}}|
        WB_SEL_PC&{2{is_jal|is_jalr}}
    );

    assign mem_op=mem_op_enum'(
        {3{is_load|is_store}}&(
        MEM_B&{3{funct3==LB_FUNCT3}}|
        MEM_H&{3{funct3==LH_FUNCT3}}|
        MEM_W&{3{funct3==LW_FUNCT3}}|
        MEM_D&{3{funct3==LD_FUNCT3}}|
        MEM_UB&{3{funct3==LBU_FUNCT3}}|
        MEM_UH&{3{funct3==LHU_FUNCT3}}|
        MEM_UW&{3{funct3==LWU_FUNCT3}})
    );

    assign alu_op=alu_op_enum'(
        ALU_SUB&{4{is_reg&(funct3==SUB_FUNCT3)&funct7[5]}}|
        ALU_SLL&{4{(is_reg|is_imm)&(funct3==SLL_FUNCT3)}}|
        ALU_SLT&{4{(is_reg|is_imm)&(funct3==SLT_FUNCT3)}}|
        ALU_SLTU&{4{(is_reg|is_imm)&(funct3==SLTU_FUNCT3)}}|
        ALU_SRL&{4{(is_reg|is_imm)&(funct3==SRL_FUNCT3)&~funct7[5]}}|
        ALU_SRA&{4{(is_reg|is_imm)&(funct3==SRA_FUNCT3)&funct7[5]}}|
        ALU_XOR&{4{(is_reg|is_imm)&(funct3==XOR_FUNCT3)}}|
        ALU_AND&{4{(is_reg|is_imm)&(funct3==AND_FUNCT3)}}|
        ALU_OR&{4{(is_reg|is_imm)&(funct3==OR_FUNCT3)}}|
        ALU_ADDW&{4{(is_regw&~funct7[5]|is_immw)&(funct3==ADDW_FUNCT3)}}|
        ALU_SUBW&{4{is_regw&(funct3==SUBW_FUNCT3)&funct7[5]}}|
        ALU_SLLW&{4{(is_regw|is_immw)&(funct3==SLLW_FUNCT3)}}|
        ALU_SRLW&{4{(is_regw|is_immw)&(funct3==SRLW_FUNCT3)&~funct7[5]}}|
        ALU_SRAW&{4{(is_regw|is_immw)&(funct3==SRAW_FUNCT3)&funct7[5]}}
    );    

endmodule
