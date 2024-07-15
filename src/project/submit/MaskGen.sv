`include"core_struct.vh"
module MaskGen (
    input [2:0] address,
    input CorePack::mem_op_enum mem_op,
    input we_mem,
    output CorePack::mask_t mem_mask
);
    import CorePack::*;

    logic isb;
    assign isb=mem_op==MEM_B;
    logic ish;
    assign ish=mem_op==MEM_H;
    logic isw;
    assign isw=mem_op==MEM_W;
    logic isd;
    assign isd=mem_op==MEM_D;

    assign mem_mask[0]=(isd|isw&(address[2]==1'b0)|ish&(address[2:1]==2'b00)|isb&(address==3'b000))&we_mem;
    assign mem_mask[1]=(isd|isw&(address[2]==1'b0)|ish&(address[2:1]==2'b00)|isb&(address==3'b001))&we_mem;
    assign mem_mask[2]=(isd|isw&(address[2]==1'b0)|ish&(address[2:1]==2'b01)|isb&(address==3'b010))&we_mem;
    assign mem_mask[3]=(isd|isw&(address[2]==1'b0)|ish&(address[2:1]==2'b01)|isb&(address==3'b011))&we_mem;
    assign mem_mask[4]=(isd|isw&(address[2]==1'b1)|ish&(address[2:1]==2'b10)|isb&(address==3'b100))&we_mem;
    assign mem_mask[5]=(isd|isw&(address[2]==1'b1)|ish&(address[2:1]==2'b10)|isb&(address==3'b101))&we_mem;
    assign mem_mask[6]=(isd|isw&(address[2]==1'b1)|ish&(address[2:1]==2'b11)|isb&(address==3'b110))&we_mem;
    assign mem_mask[7]=(isd|isw&(address[2]==1'b1)|ish&(address[2:1]==2'b11)|isb&(address==3'b111))&we_mem;
    
endmodule