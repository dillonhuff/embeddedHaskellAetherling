// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module linebuffer (
        in_stream_V_value_V_dout,
        in_stream_V_value_V_empty_n,
        in_stream_V_value_V_read,
        out_stream_V_value_V_din,
        out_stream_V_value_V_full_n,
        out_stream_V_value_V_write,
        ap_clk,
        ap_rst,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] in_stream_V_value_V_dout;
input   in_stream_V_value_V_empty_n;
output   in_stream_V_value_V_read;
output  [287:0] out_stream_V_value_V_din;
input   out_stream_V_value_V_full_n;
output   out_stream_V_value_V_write;
input   ap_clk;
input   ap_rst;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    call_U0_in_stream_V_value_V_read;
wire   [287:0] call_U0_out_stream_V_value_V_din;
wire    call_U0_out_stream_V_value_V_write;
wire    call_U0_ap_done;
wire    call_U0_ap_start;
wire    call_U0_ap_ready;
wire    call_U0_ap_idle;
wire    call_U0_ap_continue;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    call_U0_start_full_n;
wire    call_U0_start_write;

call call_U0(
    .in_stream_V_value_V_dout(in_stream_V_value_V_dout),
    .in_stream_V_value_V_empty_n(in_stream_V_value_V_empty_n),
    .in_stream_V_value_V_read(call_U0_in_stream_V_value_V_read),
    .out_stream_V_value_V_din(call_U0_out_stream_V_value_V_din),
    .out_stream_V_value_V_full_n(out_stream_V_value_V_full_n),
    .out_stream_V_value_V_write(call_U0_out_stream_V_value_V_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_done(call_U0_ap_done),
    .ap_start(call_U0_ap_start),
    .ap_ready(call_U0_ap_ready),
    .ap_idle(call_U0_ap_idle),
    .ap_continue(call_U0_ap_continue)
);

assign ap_done = call_U0_ap_done;

assign ap_idle = call_U0_ap_idle;

assign ap_ready = call_U0_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = call_U0_ap_done;

assign ap_sync_ready = call_U0_ap_ready;

assign call_U0_ap_continue = ap_continue;

assign call_U0_ap_start = ap_start;

assign call_U0_start_full_n = 1'b0;

assign call_U0_start_write = 1'b0;

assign in_stream_V_value_V_read = call_U0_in_stream_V_value_V_read;

assign out_stream_V_value_V_din = call_U0_out_stream_V_value_V_din;

assign out_stream_V_value_V_write = call_U0_out_stream_V_value_V_write;

endmodule //linebuffer
