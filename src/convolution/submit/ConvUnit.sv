`include"conv_struct.vh"
module ConvUnit (
    input clk,
    input rst,
    input Conv::data_t in_data,
    input Conv::data_vector kernel,
    input in_valid,
    output in_ready,

    output Conv::result_t result,
    output out_valid,
    input out_ready
);

    Conv::data_vector data;
    wire shift_valid;
    wire shift_ready;

    Shift shift (
        .clk(clk),
        .rst(rst),
        .in_data(in_data),
        .in_valid(in_valid),
        .in_ready(in_ready),

        .data(data),
        .out_valid(shift_valid),
        .out_ready(shift_ready)
    );

    ConvOperator conv_operator (
        .clk(clk),
        .rst(rst),
        .kernel(kernel),
        .data(data),
        .in_valid(shift_valid),
        .in_ready(shift_ready),

        .result(result),
        .out_valid(out_valid),
        .out_ready(out_ready)
    );

endmodule