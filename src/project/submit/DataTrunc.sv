`include"core_struct.vh"
module DataTrunc (
    input CorePack::data_t mem_data,
    input CorePack::mem_op_enum mem_op,
    input [2:0] address,
    output CorePack::data_t data_trunc
);
    import CorePack::*;
    data_t tmp_data;
    assign tmp_data = mem_data >> ({address,3'b0});

    logic [7:0] bdata;
    logic [15:0] hdata;
    logic [31:0] wdata;
    logic [63:0] ddata;
    assign bdata = tmp_data[7:0];
    assign hdata = tmp_data[15:0];
    assign wdata = tmp_data[31:0];
    assign ddata = tmp_data;

    logic [63:0] d [7:0];
    assign d[MEM_NO]=64'b0;
    assign d[MEM_B]={{56{bdata[7]}},bdata};
    assign d[MEM_UB]={56'b0,bdata};
    assign d[MEM_H]={{48{hdata[15]}},hdata};
    assign d[MEM_UH]={48'b0,hdata};
    assign d[MEM_W]={{32{wdata[31]}},wdata};
    assign d[MEM_UW]={32'b0,wdata};
    assign d[MEM_D]=ddata;

    assign data_trunc=d[mem_op];
    
endmodule