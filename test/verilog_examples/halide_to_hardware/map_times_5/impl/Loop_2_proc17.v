// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_2_proc17 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_hw_input_stencil_stream_to_hw_output_V_value_V_dout,
        p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n,
        p_hw_input_stencil_stream_to_hw_output_V_value_V_read,
        p_hw_input_stencil_stream_to_hw_output_V_last_V_dout,
        p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n,
        p_hw_input_stencil_stream_to_hw_output_V_last_V_read,
        arg_1_TDATA,
        arg_1_TVALID,
        arg_1_TREADY,
        arg_1_TLAST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] p_hw_input_stencil_stream_to_hw_output_V_value_V_dout;
input   p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n;
output   p_hw_input_stencil_stream_to_hw_output_V_value_V_read;
input  [0:0] p_hw_input_stencil_stream_to_hw_output_V_last_V_dout;
input   p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n;
output   p_hw_input_stencil_stream_to_hw_output_V_last_V_read;
output  [15:0] arg_1_TDATA;
output   arg_1_TVALID;
input   arg_1_TREADY;
output  [0:0] arg_1_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] arg_1_V_value_V_1_data_out;
reg    arg_1_V_value_V_1_vld_in;
wire    arg_1_V_value_V_1_vld_out;
wire    arg_1_V_value_V_1_ack_in;
wire    arg_1_V_value_V_1_ack_out;
reg   [15:0] arg_1_V_value_V_1_payload_A;
reg   [15:0] arg_1_V_value_V_1_payload_B;
reg    arg_1_V_value_V_1_sel_rd;
reg    arg_1_V_value_V_1_sel_wr;
wire    arg_1_V_value_V_1_sel;
wire    arg_1_V_value_V_1_load_A;
wire    arg_1_V_value_V_1_load_B;
reg   [1:0] arg_1_V_value_V_1_state;
wire    arg_1_V_value_V_1_state_cmp_full;
reg   [0:0] arg_1_V_last_V_1_data_out;
reg    arg_1_V_last_V_1_vld_in;
wire    arg_1_V_last_V_1_vld_out;
wire    arg_1_V_last_V_1_ack_in;
wire    arg_1_V_last_V_1_ack_out;
reg   [0:0] arg_1_V_last_V_1_payload_A;
reg   [0:0] arg_1_V_last_V_1_payload_B;
reg    arg_1_V_last_V_1_sel_rd;
reg    arg_1_V_last_V_1_sel_wr;
wire    arg_1_V_last_V_1_sel;
wire    arg_1_V_last_V_1_load_A;
wire    arg_1_V_last_V_1_load_B;
reg   [1:0] arg_1_V_last_V_1_state;
wire    arg_1_V_last_V_1_state_cmp_full;
reg    p_hw_input_stencil_stream_to_hw_output_V_value_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten_reg_206;
reg    p_hw_input_stencil_stream_to_hw_output_V_last_V_blk_n;
reg    arg_1_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] exitcond_flatten_reg_206_pp0_iter1_reg;
reg   [13:0] indvar_flatten_reg_78;
reg   [6:0] p_hw_output_y_scan_1_reg_89;
reg   [6:0] p_hw_output_x_scan_2_reg_100;
wire   [0:0] exitcond_flatten_fu_111_p2;
wire    ap_block_state2_pp0_stage0_iter0;
wire    p_hw_input_stencil_stream_to_hw_output_V_last_V0_status;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [13:0] indvar_flatten_next_fu_117_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [6:0] p_hw_output_y_scan_s_fu_163_p3;
wire   [0:0] tmp_last_V_fu_177_p2;
reg   [0:0] tmp_last_V_reg_220;
wire   [6:0] p_hw_output_x_scan_1_fu_183_p2;
wire   [15:0] p_275_fu_199_p2;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    p_hw_input_stencil_stream_to_hw_output_V_last_V0_update;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] exitcond7_fu_123_p2;
wire   [6:0] p_hw_output_y_scan_2_fu_137_p2;
wire   [0:0] tmp_2_mid1_fu_143_p2;
wire   [0:0] tmp_2_fu_149_p2;
wire   [6:0] p_hw_output_x_scan_s_fu_129_p3;
wire   [0:0] tmp_s_fu_171_p2;
wire   [0:0] tmp_2_mid2_fu_155_p3;
wire   [15:0] tmp_fu_193_p2;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 arg_1_V_value_V_1_sel_rd = 1'b0;
#0 arg_1_V_value_V_1_sel_wr = 1'b0;
#0 arg_1_V_value_V_1_state = 2'd0;
#0 arg_1_V_last_V_1_sel_rd = 1'b0;
#0 arg_1_V_last_V_1_sel_wr = 1'b0;
#0 arg_1_V_last_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((arg_1_V_value_V_1_ack_in == 1'b0) | (arg_1_V_last_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        arg_1_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((arg_1_V_last_V_1_ack_out == 1'b1) & (arg_1_V_last_V_1_vld_out == 1'b1))) begin
            arg_1_V_last_V_1_sel_rd <= ~arg_1_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        arg_1_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((arg_1_V_last_V_1_ack_in == 1'b1) & (arg_1_V_last_V_1_vld_in == 1'b1))) begin
            arg_1_V_last_V_1_sel_wr <= ~arg_1_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        arg_1_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((arg_1_V_last_V_1_state == 2'd2) & (arg_1_V_last_V_1_vld_in == 1'b0)) | ((arg_1_V_last_V_1_state == 2'd3) & (arg_1_V_last_V_1_vld_in == 1'b0) & (arg_1_V_last_V_1_ack_out == 1'b1)))) begin
            arg_1_V_last_V_1_state <= 2'd2;
        end else if ((((arg_1_V_last_V_1_state == 2'd1) & (arg_1_V_last_V_1_ack_out == 1'b0)) | ((arg_1_V_last_V_1_state == 2'd3) & (arg_1_V_last_V_1_ack_out == 1'b0) & (arg_1_V_last_V_1_vld_in == 1'b1)))) begin
            arg_1_V_last_V_1_state <= 2'd1;
        end else if (((~((arg_1_V_last_V_1_vld_in == 1'b0) & (arg_1_V_last_V_1_ack_out == 1'b1)) & ~((arg_1_V_last_V_1_ack_out == 1'b0) & (arg_1_V_last_V_1_vld_in == 1'b1)) & (arg_1_V_last_V_1_state == 2'd3)) | ((arg_1_V_last_V_1_state == 2'd1) & (arg_1_V_last_V_1_ack_out == 1'b1)) | ((arg_1_V_last_V_1_state == 2'd2) & (arg_1_V_last_V_1_vld_in == 1'b1)))) begin
            arg_1_V_last_V_1_state <= 2'd3;
        end else begin
            arg_1_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        arg_1_V_value_V_1_sel_rd <= 1'b0;
    end else begin
        if (((arg_1_V_value_V_1_ack_out == 1'b1) & (arg_1_V_value_V_1_vld_out == 1'b1))) begin
            arg_1_V_value_V_1_sel_rd <= ~arg_1_V_value_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        arg_1_V_value_V_1_sel_wr <= 1'b0;
    end else begin
        if (((arg_1_V_value_V_1_ack_in == 1'b1) & (arg_1_V_value_V_1_vld_in == 1'b1))) begin
            arg_1_V_value_V_1_sel_wr <= ~arg_1_V_value_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        arg_1_V_value_V_1_state <= 2'd0;
    end else begin
        if ((((arg_1_V_value_V_1_state == 2'd2) & (arg_1_V_value_V_1_vld_in == 1'b0)) | ((arg_1_V_value_V_1_state == 2'd3) & (arg_1_V_value_V_1_vld_in == 1'b0) & (arg_1_V_value_V_1_ack_out == 1'b1)))) begin
            arg_1_V_value_V_1_state <= 2'd2;
        end else if ((((arg_1_V_value_V_1_state == 2'd1) & (arg_1_V_value_V_1_ack_out == 1'b0)) | ((arg_1_V_value_V_1_state == 2'd3) & (arg_1_V_value_V_1_ack_out == 1'b0) & (arg_1_V_value_V_1_vld_in == 1'b1)))) begin
            arg_1_V_value_V_1_state <= 2'd1;
        end else if (((~((arg_1_V_value_V_1_vld_in == 1'b0) & (arg_1_V_value_V_1_ack_out == 1'b1)) & ~((arg_1_V_value_V_1_ack_out == 1'b0) & (arg_1_V_value_V_1_vld_in == 1'b1)) & (arg_1_V_value_V_1_state == 2'd3)) | ((arg_1_V_value_V_1_state == 2'd1) & (arg_1_V_value_V_1_ack_out == 1'b1)) | ((arg_1_V_value_V_1_state == 2'd2) & (arg_1_V_value_V_1_vld_in == 1'b1)))) begin
            arg_1_V_value_V_1_state <= 2'd3;
        end else begin
            arg_1_V_value_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_111_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_78 <= indvar_flatten_next_fu_117_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_78 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_111_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_hw_output_x_scan_2_reg_100 <= p_hw_output_x_scan_1_fu_183_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_hw_output_x_scan_2_reg_100 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_111_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_hw_output_y_scan_1_reg_89 <= p_hw_output_y_scan_s_fu_163_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_hw_output_y_scan_1_reg_89 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((arg_1_V_last_V_1_load_A == 1'b1)) begin
        arg_1_V_last_V_1_payload_A <= tmp_last_V_reg_220;
    end
end

always @ (posedge ap_clk) begin
    if ((arg_1_V_last_V_1_load_B == 1'b1)) begin
        arg_1_V_last_V_1_payload_B <= tmp_last_V_reg_220;
    end
end

always @ (posedge ap_clk) begin
    if ((arg_1_V_value_V_1_load_A == 1'b1)) begin
        arg_1_V_value_V_1_payload_A <= p_275_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((arg_1_V_value_V_1_load_B == 1'b1)) begin
        arg_1_V_value_V_1_payload_B <= p_275_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_206 <= exitcond_flatten_fu_111_p2;
        exitcond_flatten_reg_206_pp0_iter1_reg <= exitcond_flatten_reg_206;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_111_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_220 <= tmp_last_V_fu_177_p2;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_111_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((~((arg_1_V_value_V_1_ack_in == 1'b0) | (arg_1_V_last_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((arg_1_V_value_V_1_ack_in == 1'b0) | (arg_1_V_last_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond_flatten_reg_206_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((exitcond_flatten_reg_206 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        arg_1_TDATA_blk_n = arg_1_V_value_V_1_state[1'd1];
    end else begin
        arg_1_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((arg_1_V_last_V_1_sel == 1'b1)) begin
        arg_1_V_last_V_1_data_out = arg_1_V_last_V_1_payload_B;
    end else begin
        arg_1_V_last_V_1_data_out = arg_1_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_206 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        arg_1_V_last_V_1_vld_in = 1'b1;
    end else begin
        arg_1_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((arg_1_V_value_V_1_sel == 1'b1)) begin
        arg_1_V_value_V_1_data_out = arg_1_V_value_V_1_payload_B;
    end else begin
        arg_1_V_value_V_1_data_out = arg_1_V_value_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_206 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        arg_1_V_value_V_1_vld_in = 1'b1;
    end else begin
        arg_1_V_value_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_206 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V0_update = 1'b1;
    end else begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V0_update = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_206 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V_blk_n = p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n;
    end else begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_206 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        p_hw_input_stencil_stream_to_hw_output_V_value_V_blk_n = p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n;
    end else begin
        p_hw_input_stencil_stream_to_hw_output_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten_fu_111_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((exitcond_flatten_fu_111_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((arg_1_V_value_V_1_ack_in == 1'b0) | (arg_1_V_last_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_flatten_reg_206 == 1'd0) & (p_hw_input_stencil_stream_to_hw_output_V_last_V0_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((exitcond_flatten_reg_206 == 1'd0) & (p_hw_input_stencil_stream_to_hw_output_V_last_V0_status == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((exitcond_flatten_reg_206 == 1'd0) & (p_hw_input_stencil_stream_to_hw_output_V_last_V0_status == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((exitcond_flatten_reg_206 == 1'd0) & (arg_1_V_value_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_flatten_reg_206 == 1'd0) & (p_hw_input_stencil_stream_to_hw_output_V_last_V0_status == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((exitcond_flatten_reg_206_pp0_iter1_reg == 1'd0) & (arg_1_V_value_V_1_ack_in == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((arg_1_V_value_V_1_ack_in == 1'b0) | (arg_1_V_last_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign arg_1_TDATA = arg_1_V_value_V_1_data_out;

assign arg_1_TLAST = arg_1_V_last_V_1_data_out;

assign arg_1_TVALID = arg_1_V_last_V_1_state[1'd0];

assign arg_1_V_last_V_1_ack_in = arg_1_V_last_V_1_state[1'd1];

assign arg_1_V_last_V_1_ack_out = arg_1_TREADY;

assign arg_1_V_last_V_1_load_A = (~arg_1_V_last_V_1_sel_wr & arg_1_V_last_V_1_state_cmp_full);

assign arg_1_V_last_V_1_load_B = (arg_1_V_last_V_1_state_cmp_full & arg_1_V_last_V_1_sel_wr);

assign arg_1_V_last_V_1_sel = arg_1_V_last_V_1_sel_rd;

assign arg_1_V_last_V_1_state_cmp_full = ((arg_1_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign arg_1_V_last_V_1_vld_out = arg_1_V_last_V_1_state[1'd0];

assign arg_1_V_value_V_1_ack_in = arg_1_V_value_V_1_state[1'd1];

assign arg_1_V_value_V_1_ack_out = arg_1_TREADY;

assign arg_1_V_value_V_1_load_A = (~arg_1_V_value_V_1_sel_wr & arg_1_V_value_V_1_state_cmp_full);

assign arg_1_V_value_V_1_load_B = (arg_1_V_value_V_1_state_cmp_full & arg_1_V_value_V_1_sel_wr);

assign arg_1_V_value_V_1_sel = arg_1_V_value_V_1_sel_rd;

assign arg_1_V_value_V_1_state_cmp_full = ((arg_1_V_value_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign arg_1_V_value_V_1_vld_out = arg_1_V_value_V_1_state[1'd0];

assign exitcond7_fu_123_p2 = ((p_hw_output_x_scan_2_reg_100 == 7'd100) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_111_p2 = ((indvar_flatten_reg_78 == 14'd10000) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_117_p2 = (indvar_flatten_reg_78 + 14'd1);

assign p_275_fu_199_p2 = (p_hw_input_stencil_stream_to_hw_output_V_value_V_dout + tmp_fu_193_p2);

assign p_hw_input_stencil_stream_to_hw_output_V_last_V0_status = (p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n & p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n);

assign p_hw_input_stencil_stream_to_hw_output_V_last_V_read = p_hw_input_stencil_stream_to_hw_output_V_last_V0_update;

assign p_hw_input_stencil_stream_to_hw_output_V_value_V_read = p_hw_input_stencil_stream_to_hw_output_V_last_V0_update;

assign p_hw_output_x_scan_1_fu_183_p2 = (7'd1 + p_hw_output_x_scan_s_fu_129_p3);

assign p_hw_output_x_scan_s_fu_129_p3 = ((exitcond7_fu_123_p2[0:0] === 1'b1) ? 7'd0 : p_hw_output_x_scan_2_reg_100);

assign p_hw_output_y_scan_2_fu_137_p2 = (7'd1 + p_hw_output_y_scan_1_reg_89);

assign p_hw_output_y_scan_s_fu_163_p3 = ((exitcond7_fu_123_p2[0:0] === 1'b1) ? p_hw_output_y_scan_2_fu_137_p2 : p_hw_output_y_scan_1_reg_89);

assign tmp_2_fu_149_p2 = ((p_hw_output_y_scan_1_reg_89 == 7'd99) ? 1'b1 : 1'b0);

assign tmp_2_mid1_fu_143_p2 = ((p_hw_output_y_scan_2_fu_137_p2 == 7'd99) ? 1'b1 : 1'b0);

assign tmp_2_mid2_fu_155_p3 = ((exitcond7_fu_123_p2[0:0] === 1'b1) ? tmp_2_mid1_fu_143_p2 : tmp_2_fu_149_p2);

assign tmp_fu_193_p2 = p_hw_input_stencil_stream_to_hw_output_V_value_V_dout << 16'd2;

assign tmp_last_V_fu_177_p2 = (tmp_s_fu_171_p2 & tmp_2_mid2_fu_155_p3);

assign tmp_s_fu_171_p2 = ((p_hw_output_x_scan_s_fu_129_p3 == 7'd99) ? 1'b1 : 1'b0);

endmodule //Loop_2_proc17