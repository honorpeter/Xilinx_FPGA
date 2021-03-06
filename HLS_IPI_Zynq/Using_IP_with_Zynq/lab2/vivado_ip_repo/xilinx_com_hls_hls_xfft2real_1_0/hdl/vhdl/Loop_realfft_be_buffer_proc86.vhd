-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_realfft_be_buffer_proc86 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    descramble_buf_0_M_imag_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    descramble_buf_0_M_imag_V_ce0 : OUT STD_LOGIC;
    descramble_buf_0_M_imag_V_we0 : OUT STD_LOGIC;
    descramble_buf_0_M_imag_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    descramble_buf_1_M_imag_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    descramble_buf_1_M_imag_V_ce0 : OUT STD_LOGIC;
    descramble_buf_1_M_imag_V_we0 : OUT STD_LOGIC;
    descramble_buf_1_M_imag_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    din_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    din_TVALID : IN STD_LOGIC;
    din_TREADY : OUT STD_LOGIC;
    din_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    descramble_buf_0_M_real_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    descramble_buf_0_M_real_V_ce0 : OUT STD_LOGIC;
    descramble_buf_0_M_real_V_we0 : OUT STD_LOGIC;
    descramble_buf_0_M_real_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    descramble_buf_1_M_real_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    descramble_buf_1_M_real_V_ce0 : OUT STD_LOGIC;
    descramble_buf_1_M_real_V_we0 : OUT STD_LOGIC;
    descramble_buf_1_M_real_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of Loop_realfft_be_buffer_proc86 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_1FF : STD_LOGIC_VECTOR (8 downto 0) := "111111111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal exitcond1302_i_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal din_V_data_0_vld_out : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal din_V_data_0_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal din_V_data_0_vld_in : STD_LOGIC;
    signal din_V_data_0_ack_in : STD_LOGIC;
    signal din_V_data_0_ack_out : STD_LOGIC;
    signal din_V_data_0_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal din_V_data_0_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal din_V_data_0_sel_rd : STD_LOGIC := '0';
    signal din_V_data_0_sel_wr : STD_LOGIC := '0';
    signal din_V_data_0_sel : STD_LOGIC;
    signal din_V_data_0_load_A : STD_LOGIC;
    signal din_V_data_0_load_B : STD_LOGIC;
    signal din_V_data_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal din_V_data_0_state_cmp_full : STD_LOGIC;
    signal din_V_last_V_0_vld_in : STD_LOGIC;
    signal din_V_last_V_0_ack_out : STD_LOGIC;
    signal din_V_last_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal din_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal val_assign_reg_118 : STD_LOGIC_VECTOR (8 downto 0);
    signal newIndex_fu_132_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal newIndex_reg_193 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_42_reg_198 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_150_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_reg_202 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond1302_i_reg_207 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_val_assign_phi_fu_122_p6 : STD_LOGIC_VECTOR (8 downto 0);
    signal newIndex1_fu_166_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_41_fu_173_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_204 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond1302_i_reg_207 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    din_V_data_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                din_V_data_0_sel_rd <= ap_const_logic_0;
            else
                if (((din_V_data_0_ack_out = ap_const_logic_1) and (din_V_data_0_vld_out = ap_const_logic_1))) then 
                                        din_V_data_0_sel_rd <= not(din_V_data_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    din_V_data_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                din_V_data_0_sel_wr <= ap_const_logic_0;
            else
                if (((din_V_data_0_ack_in = ap_const_logic_1) and (din_V_data_0_vld_in = ap_const_logic_1))) then 
                                        din_V_data_0_sel_wr <= not(din_V_data_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    din_V_data_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                din_V_data_0_state <= ap_const_lv2_0;
            else
                if ((((din_V_data_0_state = ap_const_lv2_2) and (din_V_data_0_vld_in = ap_const_logic_0)) or ((din_V_data_0_state = ap_const_lv2_3) and (din_V_data_0_vld_in = ap_const_logic_0) and (din_V_data_0_ack_out = ap_const_logic_1)))) then 
                    din_V_data_0_state <= ap_const_lv2_2;
                elsif ((((din_V_data_0_state = ap_const_lv2_1) and (din_V_data_0_ack_out = ap_const_logic_0)) or ((din_V_data_0_state = ap_const_lv2_3) and (din_V_data_0_ack_out = ap_const_logic_0) and (din_V_data_0_vld_in = ap_const_logic_1)))) then 
                    din_V_data_0_state <= ap_const_lv2_1;
                elsif (((not(((din_V_data_0_vld_in = ap_const_logic_0) and (din_V_data_0_ack_out = ap_const_logic_1))) and not(((din_V_data_0_ack_out = ap_const_logic_0) and (din_V_data_0_vld_in = ap_const_logic_1))) and (din_V_data_0_state = ap_const_lv2_3)) or ((din_V_data_0_state = ap_const_lv2_1) and (din_V_data_0_ack_out = ap_const_logic_1)) or ((din_V_data_0_state = ap_const_lv2_2) and (din_V_data_0_vld_in = ap_const_logic_1)))) then 
                    din_V_data_0_state <= ap_const_lv2_3;
                else 
                    din_V_data_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    din_V_last_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                din_V_last_V_0_state <= ap_const_lv2_0;
            else
                if ((((din_V_last_V_0_state = ap_const_lv2_2) and (din_V_last_V_0_vld_in = ap_const_logic_0)) or ((din_V_last_V_0_state = ap_const_lv2_3) and (din_V_last_V_0_vld_in = ap_const_logic_0) and (din_V_last_V_0_ack_out = ap_const_logic_1)))) then 
                    din_V_last_V_0_state <= ap_const_lv2_2;
                elsif ((((din_V_last_V_0_state = ap_const_lv2_1) and (din_V_last_V_0_ack_out = ap_const_logic_0)) or ((din_V_last_V_0_state = ap_const_lv2_3) and (din_V_last_V_0_ack_out = ap_const_logic_0) and (din_V_last_V_0_vld_in = ap_const_logic_1)))) then 
                    din_V_last_V_0_state <= ap_const_lv2_1;
                elsif (((not(((din_V_last_V_0_vld_in = ap_const_logic_0) and (din_V_last_V_0_ack_out = ap_const_logic_1))) and not(((din_V_last_V_0_ack_out = ap_const_logic_0) and (din_V_last_V_0_vld_in = ap_const_logic_1))) and (din_V_last_V_0_state = ap_const_lv2_3)) or ((din_V_last_V_0_state = ap_const_lv2_1) and (din_V_last_V_0_ack_out = ap_const_logic_1)) or ((din_V_last_V_0_state = ap_const_lv2_2) and (din_V_last_V_0_vld_in = ap_const_logic_1)))) then 
                    din_V_last_V_0_state <= ap_const_lv2_3;
                else 
                    din_V_last_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    val_assign_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1302_i_reg_207 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                val_assign_reg_118 <= i_reg_202;
            elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond1302_i_reg_207 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                val_assign_reg_118 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((din_V_data_0_load_A = ap_const_logic_1)) then
                din_V_data_0_payload_A <= din_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((din_V_data_0_load_B = ap_const_logic_1)) then
                din_V_data_0_payload_B <= din_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond1302_i_reg_207 <= exitcond1302_i_fu_156_p2;
                newIndex_reg_193 <= newIndex_fu_132_p4;
                tmp_42_reg_198 <= ap_phi_mux_val_assign_phi_fu_122_p6(0 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_202 <= i_fu_150_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_reset_idle_pp0 = ap_const_logic_0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_reset_idle_pp0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_done_reg, din_V_data_0_vld_out, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((din_V_data_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_done_reg, din_V_data_0_vld_out, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((din_V_data_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(din_V_data_0_vld_out)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (din_V_data_0_vld_out = ap_const_logic_0);
    end process;


    ap_condition_204_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
                ap_condition_204 <= ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, exitcond1302_i_reg_207)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond1302_i_reg_207 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_val_assign_phi_fu_122_p6_assign_proc : process(val_assign_reg_118, i_reg_202, exitcond1302_i_reg_207, ap_condition_204)
    begin
        if ((ap_const_boolean_1 = ap_condition_204)) then
            if ((exitcond1302_i_reg_207 = ap_const_lv1_1)) then 
                ap_phi_mux_val_assign_phi_fu_122_p6 <= ap_const_lv9_0;
            elsif ((exitcond1302_i_reg_207 = ap_const_lv1_0)) then 
                ap_phi_mux_val_assign_phi_fu_122_p6 <= i_reg_202;
            else 
                ap_phi_mux_val_assign_phi_fu_122_p6 <= val_assign_reg_118;
            end if;
        else 
            ap_phi_mux_val_assign_phi_fu_122_p6 <= val_assign_reg_118;
        end if; 
    end process;


    ap_ready_assign_proc : process(exitcond1302_i_fu_156_p2, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond1302_i_fu_156_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_imag_V_address0 <= newIndex1_fu_166_p1(8 - 1 downto 0);

    descramble_buf_0_M_imag_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_0_M_imag_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_imag_V_d0 <= din_V_data_0_data_out(31 downto 16);

    descramble_buf_0_M_imag_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, tmp_42_reg_198)
    begin
        if (((tmp_42_reg_198 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_0_M_imag_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_imag_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_real_V_address0 <= newIndex1_fu_166_p1(8 - 1 downto 0);

    descramble_buf_0_M_real_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_0_M_real_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_0_M_real_V_d0 <= tmp_41_fu_173_p1;

    descramble_buf_0_M_real_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, tmp_42_reg_198)
    begin
        if (((tmp_42_reg_198 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_0_M_real_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_0_M_real_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_imag_V_address0 <= newIndex1_fu_166_p1(8 - 1 downto 0);

    descramble_buf_1_M_imag_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_1_M_imag_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_imag_V_d0 <= din_V_data_0_data_out(31 downto 16);

    descramble_buf_1_M_imag_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, tmp_42_reg_198)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_42_reg_198 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_1_M_imag_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_imag_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_real_V_address0 <= newIndex1_fu_166_p1(8 - 1 downto 0);

    descramble_buf_1_M_real_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_1_M_real_V_ce0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    descramble_buf_1_M_real_V_d0 <= tmp_41_fu_173_p1;

    descramble_buf_1_M_real_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, tmp_42_reg_198)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_42_reg_198 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            descramble_buf_1_M_real_V_we0 <= ap_const_logic_1;
        else 
            descramble_buf_1_M_real_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    din_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, din_V_data_0_state, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            din_TDATA_blk_n <= din_V_data_0_state(0);
        else 
            din_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    din_TREADY <= din_V_last_V_0_state(1);
    din_V_data_0_ack_in <= din_V_data_0_state(1);

    din_V_data_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            din_V_data_0_ack_out <= ap_const_logic_1;
        else 
            din_V_data_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    din_V_data_0_data_out_assign_proc : process(din_V_data_0_payload_A, din_V_data_0_payload_B, din_V_data_0_sel)
    begin
        if ((din_V_data_0_sel = ap_const_logic_1)) then 
            din_V_data_0_data_out <= din_V_data_0_payload_B;
        else 
            din_V_data_0_data_out <= din_V_data_0_payload_A;
        end if; 
    end process;

    din_V_data_0_load_A <= (not(din_V_data_0_sel_wr) and din_V_data_0_state_cmp_full);
    din_V_data_0_load_B <= (din_V_data_0_state_cmp_full and din_V_data_0_sel_wr);
    din_V_data_0_sel <= din_V_data_0_sel_rd;
    din_V_data_0_state_cmp_full <= '0' when (din_V_data_0_state = ap_const_lv2_1) else '1';
    din_V_data_0_vld_in <= din_TVALID;
    din_V_data_0_vld_out <= din_V_data_0_state(0);

    din_V_last_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            din_V_last_V_0_ack_out <= ap_const_logic_1;
        else 
            din_V_last_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

    din_V_last_V_0_vld_in <= din_TVALID;
    exitcond1302_i_fu_156_p2 <= "1" when (ap_phi_mux_val_assign_phi_fu_122_p6 = ap_const_lv9_1FF) else "0";
    i_fu_150_p2 <= std_logic_vector(unsigned(ap_const_lv9_1) + unsigned(ap_phi_mux_val_assign_phi_fu_122_p6));
    newIndex1_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(newIndex_reg_193),64));
    
    newIndex_fu_132_p4_proc : process(ap_phi_mux_val_assign_phi_fu_122_p6)
    variable vlo_cpy : STD_LOGIC_VECTOR(9+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(9+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(9 - 1 downto 0);
    variable newIndex_fu_132_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(9 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(9 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(9 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(4 - 1 downto 0) := ap_const_lv32_8(4 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(4 - 1 downto 0) := ap_const_lv32_1(4 - 1 downto 0);
        v0_cpy := ap_phi_mux_val_assign_phi_fu_122_p6;
        if (vlo_cpy(4 - 1 downto 0) > vhi_cpy(4 - 1 downto 0)) then
            vhi_cpy(4-1 downto 0) := std_logic_vector(9-1-unsigned(ap_const_lv32_1(4-1 downto 0)));
            vlo_cpy(4-1 downto 0) := std_logic_vector(9-1-unsigned(ap_const_lv32_8(4-1 downto 0)));
            for newIndex_fu_132_p4_i in 0 to 9-1 loop
                v0_cpy(newIndex_fu_132_p4_i) := ap_phi_mux_val_assign_phi_fu_122_p6(9-1-newIndex_fu_132_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(4-1 downto 0)))));

        section := (others=>'0');
        section(4-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(4-1 downto 0)) - unsigned(vlo_cpy(4-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(9-1 downto 0)))));
        res_mask := res_mask(9-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        newIndex_fu_132_p4 <= resvalue(8-1 downto 0);
    end process;

    tmp_41_fu_173_p1 <= din_V_data_0_data_out(16 - 1 downto 0);
end behav;
