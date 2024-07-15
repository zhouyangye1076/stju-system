`include"conv_struct.vh"
module Testbench;

    import Conv::*;

    reg clk;
    reg rst;
    data_t in_data;
    data_vector kernel;
    reg in_valid;
    wire in_ready;
    result_t result;
    wire out_valid;
    wire out_ready; 

    integer i;
    initial begin
        clk=0;
        rst=1;
        for(i=0;i<LEN;i=i+1)begin
            kernel.data[i]={$random(),$random()};
            $display("kernel param %x: %x", i, kernel.data[i]);
        end
        #20;
        rst=0;
        for(i=0;i<32;i=i+1)begin
            in_data={$random(),$random()};
            $display("data param %x: %x", i, in_data);
            in_valid=1'b1;
            #10;
            in_valid=1'b0;
            #800;
        end
        $display("success!!!");
        $finish;
    end

    always begin
        #5;
        clk=~clk;
    end

    ConvUnit conv_unit (
        .clk(clk),
        .rst(rst),
        .in_data(in_data),
        .kernel(kernel),
        .in_valid(in_valid),
        .in_ready(in_ready),

        .result(result),
        .out_valid(out_valid),
        .out_ready(out_ready)
    );

    assign out_ready = 1'b1;

    `ifdef VERILATE
		initial begin
			$dumpfile({`TOP_DIR,"/Testbench.vcd"});
			$dumpvars(0,dut);
			$dumpon;
		end

        wire error;
        Judge judge (
            .clk(clk),
            .rst(rst),
            .in_data(in_data),
            .kernel(kernel),
            .in_valid(in_valid),
            .in_ready(in_ready),

            .result(result),
            .out_valid(out_valid),
            .out_ready(out_ready),
            .error(error)
        );

        always@(negedge clk)begin
            if(error)begin
                $display("fail!!!");
                $finish;
            end
        end
    `endif
    
endmodule
