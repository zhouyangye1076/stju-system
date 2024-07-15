`include "core_struct.vh"
module DataPkg (
    input CorePack::data_t data,
    input CorePack::mem_op_enum mem_op,
    output CorePack::data_t data_package
);  
    import CorePack::*;
    
    data_t ddata;
    assign ddata=data;
    data_t wdata;
    assign wdata={2{data[31:0]}};
    data_t hdata;
    assign hdata={4{data[15:0]}};
    data_t bdata;
    assign bdata={8{data[7:0]}};
    
    data_t d [7:0];
    assign d[MEM_NO]=64'b0;
    assign d[MEM_B]=bdata;
    assign d[MEM_UB]=bdata;
    assign d[MEM_H]=hdata;
    assign d[MEM_UH]=hdata;
    assign d[MEM_W]=wdata;
    assign d[MEM_UW]=wdata;
    assign d[MEM_D]=ddata;

    assign data_package=d[mem_op];
endmodule