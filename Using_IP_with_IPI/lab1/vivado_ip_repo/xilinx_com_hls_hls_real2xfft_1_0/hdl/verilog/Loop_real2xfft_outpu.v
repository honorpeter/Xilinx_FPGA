// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_real2xfft_outpu (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        windowed_0_dout,
        windowed_0_empty_n,
        windowed_0_read,
        windowed_1_dout,
        windowed_1_empty_n,
        windowed_1_read,
        dout_V_din,
        dout_V_full_n,
        dout_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] windowed_0_dout;
input   windowed_0_empty_n;
output   windowed_0_read;
input  [15:0] windowed_1_dout;
input   windowed_1_empty_n;
output   windowed_1_read;
output  [32:0] dout_V_din;
input   dout_V_full_n;
output   dout_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg windowed_0_read;
reg windowed_1_read;
reg dout_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    windowed_0_blk_n;
wire    ap_CS_fsm_state2;
reg    windowed_1_blk_n;
reg    dout_V_blk_n;
wire   [9:0] tmp_fu_137_p1;
reg    ap_block_state2;
reg    ap_block_state1;
wire   [0:0] tmp_6_fu_141_p3;
reg   [9:0] i1_reg_96;
wire   [0:0] tmp_last_V_fu_114_p2;
wire   [10:0] i21_cast_fu_110_p1;
wire   [10:0] i_fu_131_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
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
        end else if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_6_fu_141_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_6_fu_141_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_reg_96 <= tmp_fu_137_p1;
    end else if (((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_6_fu_141_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        i1_reg_96 <= 10'd0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_6_fu_141_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_6_fu_141_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        dout_V_blk_n = dout_V_full_n;
    end else begin
        dout_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        dout_V_write = 1'b1;
    end else begin
        dout_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        windowed_0_blk_n = windowed_0_empty_n;
    end else begin
        windowed_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        windowed_0_read = 1'b1;
    end else begin
        windowed_0_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        windowed_1_blk_n = windowed_1_empty_n;
    end else begin
        windowed_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        windowed_1_read = 1'b1;
    end else begin
        windowed_1_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((ap_start == 1'b0) | (dout_V_full_n == 1'b0) | (windowed_1_empty_n == 1'b0) | (windowed_0_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign dout_V_din = {{{tmp_last_V_fu_114_p2}, {windowed_1_dout}}, {windowed_0_dout}};

assign i21_cast_fu_110_p1 = i1_reg_96;

assign i_fu_131_p2 = (11'd2 + i21_cast_fu_110_p1);

assign tmp_6_fu_141_p3 = i_fu_131_p2[32'd10];

assign tmp_fu_137_p1 = i_fu_131_p2[9:0];

assign tmp_last_V_fu_114_p2 = ((i1_reg_96 == 10'd1022) ? 1'b1 : 1'b0);

endmodule //Loop_real2xfft_outpu
