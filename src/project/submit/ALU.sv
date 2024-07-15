`include "core_struct.vh"
module ALU (
  input  CorePack::data_t a,
  input  CorePack::data_t b,
  input  CorePack::alu_op_enum  alu_op,
  output CorePack::data_t res
);

  import CorePack::*;

  data_t data [15:0];

  data_t add_result;
  assign add_result=a+b;
  assign data[ALU_ADD]=add_result;
  assign data[ALU_ADDW]={{32{add_result[31]}},add_result[31:0]};

  data_t sub_result;
  assign sub_result=a-b;
  assign data[ALU_SUB]=sub_result;
  assign data[ALU_SUBW]={{32{sub_result[31]}},sub_result[31:0]};

  assign data[ALU_SLL]=a<<b[5:0];
  logic [31:0] sllw;
  assign sllw=a[31:0]<<b[4:0];
  assign data[ALU_SLLW]={{32{sllw[31]}},sllw};

  assign data[ALU_SRL]=a>>b[5:0];
  logic [31:0] srlw;
  assign srlw=a[31:0]>>b[4:0];
  assign data[ALU_SRLW]={{32{srlw[31]}},srlw};

  assign data[ALU_SRA]=($signed(a))>>>($signed(b[5:0]));
  logic [31:0] sraw;
  assign sraw=($signed(a[31:0]))>>>($signed(b[4:0]));
  assign data[ALU_SRAW]={{32{sraw[31]}},sraw};

  assign data[ALU_AND]=a&b;
  assign data[ALU_OR]=a|b;
  assign data[ALU_XOR]=a^b;
  assign data[ALU_SLT]={63'b0,($signed(a))<($signed(b))};
  assign data[ALU_SLTU]={63'b0,a<b};
  assign data[ALU_DEFAULT]=64'b0;

  assign res=data[alu_op];

endmodule
