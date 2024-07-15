`include"core_struct.vh"
module ImmGen (
    input CorePack::inst_t inst,
    input CorePack::imm_op_enum immgen_op,
    output CorePack::data_t imm
);

    import CorePack::*;
    
    data_t idata;
    assign idata={{(xLen-12){inst[31]}},inst[31:20]};
    data_t sdata;
    assign sdata={{(xLen-12){inst[31]}},inst[31:25],inst[11:7]};
    data_t bdata;
    assign bdata={{(xLen-13){inst[31]}},inst[31],inst[7],inst[30:25],inst[11:8],1'b0};
    data_t udata;
    assign udata={{(xLen-32){inst[31]}},inst[31:12],12'b0};
    data_t ujdata;
    assign ujdata={{(xLen-21){inst[31]}},inst[31],inst[19:12],inst[20],inst[30:21],1'b0};
    
    data_t imms [7:0];
    assign imms[IMM0]=64'b0;
    assign imms[I_IMM]=idata;
    assign imms[S_IMM]=sdata;
    assign imms[B_IMM]=bdata;
    assign imms[U_IMM]=udata;
    assign imms[UJ_IMM]=ujdata;
    assign imms[IMM6]=64'b0;
    assign imms[IMM7]=64'b0;

    assign imm=imms[immgen_op];
    
endmodule