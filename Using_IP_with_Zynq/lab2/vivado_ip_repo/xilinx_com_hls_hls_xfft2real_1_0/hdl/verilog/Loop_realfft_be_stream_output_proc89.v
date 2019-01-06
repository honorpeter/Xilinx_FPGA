// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_realfft_be_stream_output_proc89 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dout_TREADY,
        dout_TDATA,
        dout_TVALID,
        dout_TLAST,
        real_spectrum_lo_V_M_real_V_dout,
        real_spectrum_lo_V_M_real_V_empty_n,
        real_spectrum_lo_V_M_real_V_read,
        real_spectrum_lo_V_M_imag_V_dout,
        real_spectrum_lo_V_M_imag_V_empty_n,
        real_spectrum_lo_V_M_imag_V_read,
        real_spectrum_hi_V_M_real_V_dout,
        real_spectrum_hi_V_M_real_V_empty_n,
        real_spectrum_hi_V_M_real_V_read,
        real_spectrum_hi_V_M_imag_V_dout,
        real_spectrum_hi_V_M_imag_V_empty_n,
        real_spectrum_hi_V_M_imag_V_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   dout_TREADY;
output  [31:0] dout_TDATA;
output   dout_TVALID;
output  [0:0] dout_TLAST;
input  [15:0] real_spectrum_lo_V_M_real_V_dout;
input   real_spectrum_lo_V_M_real_V_empty_n;
output   real_spectrum_lo_V_M_real_V_read;
input  [15:0] real_spectrum_lo_V_M_imag_V_dout;
input   real_spectrum_lo_V_M_imag_V_empty_n;
output   real_spectrum_lo_V_M_imag_V_read;
input  [15:0] real_spectrum_hi_V_M_real_V_dout;
input   real_spectrum_hi_V_M_real_V_empty_n;
output   real_spectrum_hi_V_M_real_V_read;
input  [15:0] real_spectrum_hi_V_M_imag_V_dout;
input   real_spectrum_hi_V_M_imag_V_empty_n;
output   real_spectrum_hi_V_M_imag_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] dout_val_last_V_fu_182_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    real_spectrum_lo_V_M_real_V0_status;
reg   [0:0] tmp_reg_219;
wire    real_spectrum_hi_V_M_real_V0_status;
reg    ap_block_state3_pp0_stage0_iter1;
wire    dout_V_data_1_ack_in;
reg    ap_enable_reg_pp0_iter1;
wire    dout_V_last_V_1_ack_in;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] dout_V_data_1_data_out;
reg    dout_V_data_1_vld_in;
wire    dout_V_data_1_vld_out;
wire    dout_V_data_1_ack_out;
reg   [31:0] dout_V_data_1_payload_A;
reg   [31:0] dout_V_data_1_payload_B;
reg    dout_V_data_1_sel_rd;
reg    dout_V_data_1_sel_wr;
wire    dout_V_data_1_sel;
wire    dout_V_data_1_load_A;
wire    dout_V_data_1_load_B;
reg   [1:0] dout_V_data_1_state;
wire    dout_V_data_1_state_cmp_full;
reg   [0:0] dout_V_last_V_1_data_out;
reg    dout_V_last_V_1_vld_in;
wire    dout_V_last_V_1_vld_out;
wire    dout_V_last_V_1_ack_out;
reg   [0:0] dout_V_last_V_1_payload_A;
reg   [0:0] dout_V_last_V_1_payload_B;
reg    dout_V_last_V_1_sel_rd;
reg    dout_V_last_V_1_sel_wr;
wire    dout_V_last_V_1_sel;
wire    dout_V_last_V_1_load_A;
wire    dout_V_last_V_1_load_B;
reg   [1:0] dout_V_last_V_1_state;
wire    dout_V_last_V_1_state_cmp_full;
reg    dout_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    real_spectrum_lo_V_M_real_V_blk_n;
reg    real_spectrum_lo_V_M_imag_V_blk_n;
reg    real_spectrum_hi_V_M_real_V_blk_n;
reg    real_spectrum_hi_V_M_imag_V_blk_n;
reg   [8:0] i4_0_i1_reg_136;
wire   [8:0] i_fu_176_p2;
reg   [8:0] i_reg_223;
reg   [0:0] dout_val_last_V_reg_228;
reg   [0:0] ap_reg_pp0_iter1_dout_val_last_V_reg_228;
wire   [31:0] tmp_data_1_fu_208_p3;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [8:0] ap_phi_mux_i4_0_i1_phi_fu_140_p6;
reg   [15:0] ap_phi_mux_tmp_data_M_imag_V_phi_fu_153_p4;
wire   [15:0] ap_phi_reg_pp0_iter1_tmp_data_M_imag_V_reg_150;
reg   [15:0] ap_phi_mux_tmp_data_M_real_V_phi_fu_162_p4;
wire   [15:0] ap_phi_reg_pp0_iter1_tmp_data_M_real_V_reg_159;
reg    real_spectrum_lo_V_M_real_V0_update;
reg    real_spectrum_hi_V_M_real_V0_update;
reg    ap_block_pp0_stage0_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_210;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 dout_V_data_1_sel_rd = 1'b0;
#0 dout_V_data_1_sel_wr = 1'b0;
#0 dout_V_data_1_state = 2'd0;
#0 dout_V_last_V_1_sel_rd = 1'b0;
#0 dout_V_last_V_1_sel_wr = 1'b0;
#0 dout_V_last_V_1_state = 2'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_dout_val_last_V_reg_228 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
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
        dout_V_data_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_V_data_1_ack_out == 1'b1) & (dout_V_data_1_vld_out == 1'b1))) begin
            dout_V_data_1_sel_rd <= ~dout_V_data_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dout_V_data_1_sel_wr <= 1'b0;
    end else begin
        if (((dout_V_data_1_vld_in == 1'b1) & (dout_V_data_1_ack_in == 1'b1))) begin
            dout_V_data_1_sel_wr <= ~dout_V_data_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dout_V_data_1_state <= 2'd0;
    end else begin
        if ((((dout_V_data_1_state == 2'd3) & (dout_V_data_1_vld_in == 1'b0) & (dout_V_data_1_ack_out == 1'b1)) | ((dout_V_data_1_state == 2'd2) & (dout_V_data_1_vld_in == 1'b0)))) begin
            dout_V_data_1_state <= 2'd2;
        end else if ((((dout_V_data_1_state == 2'd3) & (dout_V_data_1_ack_out == 1'b0) & (dout_V_data_1_vld_in == 1'b1)) | ((dout_V_data_1_state == 2'd1) & (dout_V_data_1_ack_out == 1'b0)))) begin
            dout_V_data_1_state <= 2'd1;
        end else if ((((dout_V_data_1_state == 2'd1) & (dout_V_data_1_ack_out == 1'b1)) | ((dout_V_data_1_state == 2'd2) & (dout_V_data_1_vld_in == 1'b1)) | (~((dout_V_data_1_vld_in == 1'b0) & (dout_V_data_1_ack_out == 1'b1)) & ~((dout_V_data_1_ack_out == 1'b0) & (dout_V_data_1_vld_in == 1'b1)) & (dout_V_data_1_state == 2'd3)))) begin
            dout_V_data_1_state <= 2'd3;
        end else begin
            dout_V_data_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dout_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_V_last_V_1_ack_out == 1'b1) & (dout_V_last_V_1_vld_out == 1'b1))) begin
            dout_V_last_V_1_sel_rd <= ~dout_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dout_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dout_V_last_V_1_ack_in == 1'b1) & (dout_V_last_V_1_vld_in == 1'b1))) begin
            dout_V_last_V_1_sel_wr <= ~dout_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dout_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((dout_V_last_V_1_state == 2'd2) & (dout_V_last_V_1_vld_in == 1'b0)) | ((dout_V_last_V_1_state == 2'd3) & (dout_V_last_V_1_vld_in == 1'b0) & (dout_V_last_V_1_ack_out == 1'b1)))) begin
            dout_V_last_V_1_state <= 2'd2;
        end else if ((((dout_V_last_V_1_state == 2'd1) & (dout_V_last_V_1_ack_out == 1'b0)) | ((dout_V_last_V_1_state == 2'd3) & (dout_V_last_V_1_ack_out == 1'b0) & (dout_V_last_V_1_vld_in == 1'b1)))) begin
            dout_V_last_V_1_state <= 2'd1;
        end else if (((~((dout_V_last_V_1_vld_in == 1'b0) & (dout_V_last_V_1_ack_out == 1'b1)) & ~((dout_V_last_V_1_ack_out == 1'b0) & (dout_V_last_V_1_vld_in == 1'b1)) & (dout_V_last_V_1_state == 2'd3)) | ((dout_V_last_V_1_state == 2'd1) & (dout_V_last_V_1_ack_out == 1'b1)) | ((dout_V_last_V_1_state == 2'd2) & (dout_V_last_V_1_vld_in == 1'b1)))) begin
            dout_V_last_V_1_state <= 2'd3;
        end else begin
            dout_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (dout_val_last_V_reg_228 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i4_0_i1_reg_136 <= i_reg_223;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (dout_val_last_V_reg_228 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        i4_0_i1_reg_136 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_dout_val_last_V_reg_228 <= dout_val_last_V_reg_228;
        dout_val_last_V_reg_228 <= dout_val_last_V_fu_182_p2;
        tmp_reg_219 <= ap_phi_mux_i4_0_i1_phi_fu_140_p6[32'd8];
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_data_1_load_A == 1'b1)) begin
        dout_V_data_1_payload_A <= tmp_data_1_fu_208_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_data_1_load_B == 1'b1)) begin
        dout_V_data_1_payload_B <= tmp_data_1_fu_208_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_last_V_1_load_A == 1'b1)) begin
        dout_V_last_V_1_payload_A <= dout_val_last_V_reg_228;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_last_V_1_load_B == 1'b1)) begin
        dout_V_last_V_1_payload_B <= dout_val_last_V_reg_228;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_223 <= i_fu_176_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_dout_val_last_V_reg_228 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((dout_val_last_V_reg_228 == 1'd1)) begin
            ap_phi_mux_i4_0_i1_phi_fu_140_p6 = 9'd0;
        end else if ((dout_val_last_V_reg_228 == 1'd0)) begin
            ap_phi_mux_i4_0_i1_phi_fu_140_p6 = i_reg_223;
        end else begin
            ap_phi_mux_i4_0_i1_phi_fu_140_p6 = i4_0_i1_reg_136;
        end
    end else begin
        ap_phi_mux_i4_0_i1_phi_fu_140_p6 = i4_0_i1_reg_136;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((tmp_reg_219 == 1'd1)) begin
            ap_phi_mux_tmp_data_M_imag_V_phi_fu_153_p4 = real_spectrum_hi_V_M_imag_V_dout;
        end else if ((tmp_reg_219 == 1'd0)) begin
            ap_phi_mux_tmp_data_M_imag_V_phi_fu_153_p4 = real_spectrum_lo_V_M_imag_V_dout;
        end else begin
            ap_phi_mux_tmp_data_M_imag_V_phi_fu_153_p4 = ap_phi_reg_pp0_iter1_tmp_data_M_imag_V_reg_150;
        end
    end else begin
        ap_phi_mux_tmp_data_M_imag_V_phi_fu_153_p4 = ap_phi_reg_pp0_iter1_tmp_data_M_imag_V_reg_150;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_210)) begin
        if ((tmp_reg_219 == 1'd1)) begin
            ap_phi_mux_tmp_data_M_real_V_phi_fu_162_p4 = real_spectrum_hi_V_M_real_V_dout;
        end else if ((tmp_reg_219 == 1'd0)) begin
            ap_phi_mux_tmp_data_M_real_V_phi_fu_162_p4 = real_spectrum_lo_V_M_real_V_dout;
        end else begin
            ap_phi_mux_tmp_data_M_real_V_phi_fu_162_p4 = ap_phi_reg_pp0_iter1_tmp_data_M_real_V_reg_159;
        end
    end else begin
        ap_phi_mux_tmp_data_M_real_V_phi_fu_162_p4 = ap_phi_reg_pp0_iter1_tmp_data_M_real_V_reg_159;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (dout_val_last_V_fu_182_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        dout_TDATA_blk_n = dout_V_data_1_state[1'd1];
    end else begin
        dout_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((dout_V_data_1_sel == 1'b1)) begin
        dout_V_data_1_data_out = dout_V_data_1_payload_B;
    end else begin
        dout_V_data_1_data_out = dout_V_data_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_V_data_1_vld_in = 1'b1;
    end else begin
        dout_V_data_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((dout_V_last_V_1_sel == 1'b1)) begin
        dout_V_last_V_1_data_out = dout_V_last_V_1_payload_B;
    end else begin
        dout_V_last_V_1_data_out = dout_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_V_last_V_1_vld_in = 1'b1;
    end else begin
        dout_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_219 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_hi_V_M_imag_V_blk_n = real_spectrum_hi_V_M_imag_V_empty_n;
    end else begin
        real_spectrum_hi_V_M_imag_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_219 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_hi_V_M_real_V0_update = 1'b1;
    end else begin
        real_spectrum_hi_V_M_real_V0_update = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_219 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_hi_V_M_real_V_blk_n = real_spectrum_hi_V_M_real_V_empty_n;
    end else begin
        real_spectrum_hi_V_M_real_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_219 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_lo_V_M_imag_V_blk_n = real_spectrum_lo_V_M_imag_V_empty_n;
    end else begin
        real_spectrum_lo_V_M_imag_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_219 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_lo_V_M_real_V0_update = 1'b1;
    end else begin
        real_spectrum_lo_V_M_real_V0_update = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_219 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_lo_V_M_real_V_blk_n = real_spectrum_lo_V_M_real_V_empty_n;
    end else begin
        real_spectrum_lo_V_M_real_V_blk_n = 1'b1;
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
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((dout_V_last_V_1_ack_in == 1'b0) | (dout_V_data_1_ack_in == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((real_spectrum_hi_V_M_real_V0_status == 1'b0) & (tmp_reg_219 == 1'd1)) | ((tmp_reg_219 == 1'd0) & (real_spectrum_lo_V_M_real_V0_status == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((dout_V_last_V_1_ack_in == 1'b0) | (dout_V_data_1_ack_in == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((dout_V_data_1_ack_in == 1'b0) | ((real_spectrum_hi_V_M_real_V0_status == 1'b0) & (tmp_reg_219 == 1'd1)) | ((tmp_reg_219 == 1'd0) & (real_spectrum_lo_V_M_real_V0_status == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((dout_V_last_V_1_ack_in == 1'b0) | (dout_V_data_1_ack_in == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((dout_V_data_1_ack_in == 1'b0) | ((real_spectrum_hi_V_M_real_V0_status == 1'b0) & (tmp_reg_219 == 1'd1)) | ((tmp_reg_219 == 1'd0) & (real_spectrum_lo_V_M_real_V0_status == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((real_spectrum_hi_V_M_real_V0_status == 1'b0) & (tmp_reg_219 == 1'd1)) | ((tmp_reg_219 == 1'd0) & (real_spectrum_lo_V_M_real_V0_status == 1'b0)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((dout_V_last_V_1_ack_in == 1'b0) | (dout_V_data_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_condition_210 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter1_tmp_data_M_imag_V_reg_150 = 'bx;

assign ap_phi_reg_pp0_iter1_tmp_data_M_real_V_reg_159 = 'bx;

assign dout_TDATA = dout_V_data_1_data_out;

assign dout_TLAST = dout_V_last_V_1_data_out;

assign dout_TVALID = dout_V_last_V_1_state[1'd0];

assign dout_V_data_1_ack_in = dout_V_data_1_state[1'd1];

assign dout_V_data_1_ack_out = dout_TREADY;

assign dout_V_data_1_load_A = (~dout_V_data_1_sel_wr & dout_V_data_1_state_cmp_full);

assign dout_V_data_1_load_B = (dout_V_data_1_state_cmp_full & dout_V_data_1_sel_wr);

assign dout_V_data_1_sel = dout_V_data_1_sel_rd;

assign dout_V_data_1_state_cmp_full = ((dout_V_data_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dout_V_data_1_vld_out = dout_V_data_1_state[1'd0];

assign dout_V_last_V_1_ack_in = dout_V_last_V_1_state[1'd1];

assign dout_V_last_V_1_ack_out = dout_TREADY;

assign dout_V_last_V_1_load_A = (~dout_V_last_V_1_sel_wr & dout_V_last_V_1_state_cmp_full);

assign dout_V_last_V_1_load_B = (dout_V_last_V_1_state_cmp_full & dout_V_last_V_1_sel_wr);

assign dout_V_last_V_1_sel = dout_V_last_V_1_sel_rd;

assign dout_V_last_V_1_state_cmp_full = ((dout_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dout_V_last_V_1_vld_out = dout_V_last_V_1_state[1'd0];

assign dout_val_last_V_fu_182_p2 = ((ap_phi_mux_i4_0_i1_phi_fu_140_p6 == 9'd511) ? 1'b1 : 1'b0);

assign i_fu_176_p2 = (ap_phi_mux_i4_0_i1_phi_fu_140_p6 + 9'd1);

assign real_spectrum_hi_V_M_imag_V_read = real_spectrum_hi_V_M_real_V0_update;

assign real_spectrum_hi_V_M_real_V0_status = (real_spectrum_hi_V_M_real_V_empty_n & real_spectrum_hi_V_M_imag_V_empty_n);

assign real_spectrum_hi_V_M_real_V_read = real_spectrum_hi_V_M_real_V0_update;

assign real_spectrum_lo_V_M_imag_V_read = real_spectrum_lo_V_M_real_V0_update;

assign real_spectrum_lo_V_M_real_V0_status = (real_spectrum_lo_V_M_real_V_empty_n & real_spectrum_lo_V_M_imag_V_empty_n);

assign real_spectrum_lo_V_M_real_V_read = real_spectrum_lo_V_M_real_V0_update;

assign tmp_data_1_fu_208_p3 = {{ap_phi_mux_tmp_data_M_imag_V_phi_fu_153_p4}, {ap_phi_mux_tmp_data_M_real_V_phi_fu_162_p4}};

endmodule //Loop_realfft_be_stream_output_proc89
