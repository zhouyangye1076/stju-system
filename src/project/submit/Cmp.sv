`include"core_struct.vh"
module Cmp (
    input CorePack::data_t a,
    input CorePack::data_t b,
    input CorePack::cmp_op_enum cmp_op,
    output cmp_res
);

    import CorePack::*;

    logic [7:0] data;
    assign data[CMP_NO]=1'b0;
    logic eq_result;
    assign eq_result=a==b;
    assign data[CMP_EQ]=eq_result;
    assign data[CMP_NE]=~eq_result;
    logic ge_result;
    assign ge_result=$signed(a)>=$signed(b);
    assign data[CMP_GE]=ge_result;
    assign data[CMP_LT]=~ge_result;
    logic geu_result;
    assign geu_result=a>=b;
    assign data[CMP_GEU]=geu_result;
    assign data[CMP_LTU]=~geu_result;
    assign data[7]=1'b0;

    assign cmp_res=data[cmp_op];
    
endmodule