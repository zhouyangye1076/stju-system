`include"uart_struct.vh"
`include"bus_struct.vh"
module Mem_UartUnit #(
    parameter ClkFrequency = 100000000,
    parameter Baud = 9600,
    parameter FIFO_DEPTH = 8,
    parameter FIFO_KIND  = "sync"
)(
    input logic core_clk,
    input logic rstn,
    
    Mem_ift.Slave mem_ift,

    input logic sys_clk,
    input logic rxd,
    output logic rts,
    output logic txd,
    input logic cts,

    output UartPack::UartInfo cosim_uart_info
);
    import UartPack::*;
    import BusPack::*;

    Decoupled_ift #(
        .DATA_WIDTH(UART_STRUCT_WIDTH)
    ) uart_tdata ();

    Decoupled_ift #(
        .DATA_WIDTH(UART_STRUCT_WIDTH)
    ) uart_rdata ();

    UartUnit #(
        .ClkFrequency(ClkFrequency),
        .Baud(Baud),
        .FIFO_DEPTH(FIFO_DEPTH),
        .FIFO_KIND(FIFO_KIND)
    ) uart_unit (
        .core_clk(core_clk),
        .rstn(rstn),
        .uart_tdata(uart_tdata.Slave),
        .uart_rdata(uart_rdata.Master),

        .sys_clk(sys_clk),
        .rxd(rxd),
        .rts(rts),
        .txd(txd),
        .cts(cts)
    );

    // the same struct
    `Mem_Slave_Shank_Hand(mem_ift, r, core_clk)

    // the encode struct
    assign mem_ift_r_ready = ~mem_ift_r_busy | mem_ift_r_reply_fire;
    assign mem_ift_r_valid = mem_ift_r_busy; 

    logic r_is_data;
    logic r_is_state;
    logic [UART_ADDR_WIDTH-1:0] r_addr;
    assign r_addr = mem_ift.r_request_bits.raddr[UART_ADDR_WIDTH-1:0];
    assign r_is_data = r_addr == DATA_REG_OFFSET;
    assign r_is_state = r_addr == STATE_REG_OFFSET;

    always@(posedge core_clk or negedge rstn)begin
        if(~rstn)begin
            mem_ift.r_reply_bits <= '{rdata:{mem_ift.DATA_WIDTH{1'b0}},rresp:OKAY};
        end else if(mem_ift_r_request_fire)begin
            case({r_is_data,r_is_state})
                2'b10:begin
                    mem_ift.r_reply_bits.rdata <= uart_rdata.valid ? {56'b0, uart_rdata.data} : 64'hdeadbeef;
                    mem_ift.r_reply_bits.rresp <= uart_rdata.valid ? OKAY : SLVERR;
                end
                2'b01:begin
                    mem_ift.r_reply_bits.rdata <= {54'b0, uart_tdata.ready, uart_rdata.valid, 8'b0};
                    mem_ift.r_reply_bits.rresp <= OKAY;
                end
                default:begin
                    mem_ift.r_reply_bits.rdata <= 64'hdeadbeef;
                    mem_ift.r_reply_bits.rresp <= SLVERR;
                end
            endcase
        end
    end

    assign uart_rdata.ready = mem_ift_r_reply_fire & r_is_data;
    
    // the same struct
    `Mem_Slave_Shank_Hand(mem_ift, w, core_clk)

    // the encode struct
    assign mem_ift_w_ready =  ~mem_ift_w_busy | mem_ift_w_reply_fire;
    assign mem_ift_w_valid = mem_ift_w_busy;

    logic w_is_data;
    logic [UART_ADDR_WIDTH-1:0] w_addr;
    assign w_addr = mem_ift.w_request_bits.waddr[UART_ADDR_WIDTH-1:0];
    assign w_is_data = w_addr == DATA_REG_OFFSET;

    assign uart_tdata.valid = mem_ift_w_request_fire & w_is_data;
    assign uart_tdata.data  = mem_ift.w_request_bits.wdata[UART_DATA_WIDTH-1:0];

    always@(posedge core_clk or negedge rstn)begin
        if(~rstn)begin
            mem_ift.w_reply_bits <= '{bresp:OKAY};
        end else if(mem_ift_w_request_fire)begin
            mem_ift.w_reply_bits.bresp <= ~ (
                mem_ift.w_request_bits.waddr[UART_ADDR_WIDTH-1:0]==DATA_REG_OFFSET & 
                // the address is 0
                uart_tdata.ready &
                // the fifo is ready
                mem_ift.w_request_bits.wmask[0]
                // the write mask is enable
            ) ? SLVERR : OKAY;
        end
    end

    assign cosim_uart_info.uart_info = {48'b0, {6'b0, uart_tdata.ready, uart_rdata.valid}, uart_rdata.data};

endmodule

module UartUnit #(
    parameter ClkFrequency = 100000000,
    parameter Baud = 9600,
    parameter FIFO_DEPTH = 8,
    parameter FIFO_KIND  = "sync"
)(
    input logic core_clk,
    input logic rstn,
    Decoupled_ift.Slave uart_tdata,
    Decoupled_ift.Master uart_rdata,

    input logic sys_clk,
    input logic rxd,
    output logic rts,
    output logic txd,
    input logic cts
);

    import UartPack::*;

    Decoupled_ift #(
        .DATA_WIDTH(UART_STRUCT_WIDTH)
    ) uart_txd();

    Decoupled_ift #(
        .DATA_WIDTH(UART_STRUCT_WIDTH)
    ) uart_rxd();

    DecoupledFifo #(
        .FIFO_DEPTH(FIFO_DEPTH),
        .FIFO_KIND(FIFO_KIND)
    ) tfifo (
        .rstn(rstn),

        .out_clk(sys_clk),
        .out_data(uart_txd),

        .in_clk(core_clk),
        .in_data(uart_tdata)
    );

    uart_transmitter#(
        .ClkFrequency(ClkFrequency),
        .Baud(Baud)
    ) transmit (
        .clk(sys_clk),
        .rstn(rstn),
        .uart_data(uart_txd),
        .txd(txd),
        .cts(cts)
    );

    uart_receiver#(
        .ClkFrequency(ClkFrequency),
        .Baud(Baud)
    ) receiver (
        .clk(sys_clk),
        .rstn(rstn),
        .uart_data(uart_rxd),
        .rxd(rxd),
        .rts(rts)
    );

    DecoupledFifo #(
        .FIFO_DEPTH(FIFO_DEPTH),
        .FIFO_KIND(FIFO_KIND)
    ) rfifo (
        .rstn(rstn),

        .out_clk(core_clk),
        .out_data(uart_rdata),

        .in_clk(sys_clk),
        .in_data(uart_rxd)
    );

endmodule

module uart_transmitter#(
    parameter ClkFrequency = 100000000,
    parameter Baud = 9600
)(
	input wire clk,
    input wire rstn,
	Decoupled_ift.Slave uart_data,
	output wire txd,
    input wire cts
);

    import UartPack::*;

    uart_t txd_data;
    wire txd_start;
    assign txd_data = uart_data.data;
    assign txd_start = uart_data.valid;

    wire txd_busy;
    async_transmitter#(
        .ClkFrequency(ClkFrequency),
        .Baud(Baud)
    ) transmitter (
        .clk(clk),
        .TxD_start(txd_start),
        .TxD_data(txd_data),
        .TxD(txd),
        .TxD_busy(txd_busy)
    );

    // assign uart_data.ready = ~txd_busy & ~cts;
    assign uart_data.ready = ~txd_busy;

    `ifdef VERILATE
        always@(posedge clk)begin
            if(uart_data.valid & uart_data.ready)begin
                $display("soc transmit data %x", uart_data.data);
            end
        end
    `endif

endmodule

module uart_receiver#(
    parameter ClkFrequency = 100000000,
    parameter Baud = 9600
)(
	input wire clk,
    input wire rstn,
	Decoupled_ift.Master uart_data,
	input wire rxd,
    output wire rts
);

    import UartPack::*;

    async_receiver#(
        .ClkFrequency(ClkFrequency),
        .Baud(Baud)
    ) receiver (
        .clk(clk),
        .RxD(rxd),
        .RxD_data_ready(uart_data.valid),
        .RxD_clear(uart_data.valid & uart_data.ready),
        .RxD_data(uart_data.data)
    );

    // assign rts = ~uart_data.ready;
    assign rts = 1'b0;

    `ifdef VERILATE
        always@(posedge clk)begin
            if(uart_data.valid & uart_data.ready)begin
                $display("soc receive data %x", uart_data.data);
            end
        end
    `endif

endmodule