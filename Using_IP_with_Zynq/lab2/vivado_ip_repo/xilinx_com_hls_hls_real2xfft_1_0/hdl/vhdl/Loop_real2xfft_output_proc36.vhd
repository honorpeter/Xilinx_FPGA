-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_real2xfft_output_proc36 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    windowed_0_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    windowed_0_empty_n : IN STD_LOGIC;
    windowed_0_read : OUT STD_LOGIC;
    windowed_1_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    windowed_1_empty_n : IN STD_LOGIC;
    windowed_1_read : OUT STD_LOGIC;
    dout_TREADY : IN STD_LOGIC;
    dout_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    dout_TVALID : OUT STD_LOGIC;
    dout_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of Loop_real2xfft_output_proc36 is 
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
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_3FE : STD_LOGIC_VECTOR (9 downto 0) := "1111111110";
    constant ap_const_lv11_2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_12_fu_148_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal dout_V_data_1_ack_in : STD_LOGIC;
    signal dout_V_last_V_1_ack_in : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal dout_V_data_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal dout_V_data_1_vld_in : STD_LOGIC;
    signal dout_V_data_1_vld_out : STD_LOGIC;
    signal dout_V_data_1_ack_out : STD_LOGIC;
    signal dout_V_data_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal dout_V_data_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal dout_V_data_1_sel_rd : STD_LOGIC := '0';
    signal dout_V_data_1_sel_wr : STD_LOGIC := '0';
    signal dout_V_data_1_sel : STD_LOGIC;
    signal dout_V_data_1_load_A : STD_LOGIC;
    signal dout_V_data_1_load_B : STD_LOGIC;
    signal dout_V_data_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal dout_V_data_1_state_cmp_full : STD_LOGIC;
    signal dout_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal dout_V_last_V_1_vld_in : STD_LOGIC;
    signal dout_V_last_V_1_vld_out : STD_LOGIC;
    signal dout_V_last_V_1_ack_out : STD_LOGIC;
    signal dout_V_last_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal dout_V_last_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal dout_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal dout_V_last_V_1_sel_wr : STD_LOGIC := '0';
    signal dout_V_last_V_1_sel : STD_LOGIC;
    signal dout_V_last_V_1_load_A : STD_LOGIC;
    signal dout_V_last_V_1_load_B : STD_LOGIC;
    signal dout_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal dout_V_last_V_1_state_cmp_full : STD_LOGIC;
    signal windowed_0_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal windowed_1_blk_n : STD_LOGIC;
    signal dout_TDATA_blk_n : STD_LOGIC;
    signal i1_reg_104 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_last_V_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_data_fu_129_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_144_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_reg_168 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_12_reg_173 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_i1_phi_fu_108_p6 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i1_cast_fu_118_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_fu_138_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_195 : BOOLEAN;


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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_12_reg_173 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    dout_V_data_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dout_V_data_1_sel_rd <= ap_const_logic_0;
            else
                if (((dout_V_data_1_ack_out = ap_const_logic_1) and (dout_V_data_1_vld_out = ap_const_logic_1))) then 
                                        dout_V_data_1_sel_rd <= not(dout_V_data_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    dout_V_data_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dout_V_data_1_sel_wr <= ap_const_logic_0;
            else
                if (((dout_V_data_1_vld_in = ap_const_logic_1) and (dout_V_data_1_ack_in = ap_const_logic_1))) then 
                                        dout_V_data_1_sel_wr <= not(dout_V_data_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    dout_V_data_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dout_V_data_1_state <= ap_const_lv2_0;
            else
                if ((((dout_V_data_1_state = ap_const_lv2_3) and (dout_V_data_1_vld_in = ap_const_logic_0) and (dout_V_data_1_ack_out = ap_const_logic_1)) or ((dout_V_data_1_state = ap_const_lv2_2) and (dout_V_data_1_vld_in = ap_const_logic_0)))) then 
                    dout_V_data_1_state <= ap_const_lv2_2;
                elsif ((((dout_V_data_1_state = ap_const_lv2_1) and (dout_V_data_1_ack_out = ap_const_logic_0)) or ((dout_V_data_1_state = ap_const_lv2_3) and (dout_V_data_1_ack_out = ap_const_logic_0) and (dout_V_data_1_vld_in = ap_const_logic_1)))) then 
                    dout_V_data_1_state <= ap_const_lv2_1;
                elsif ((((dout_V_data_1_state = ap_const_lv2_1) and (dout_V_data_1_ack_out = ap_const_logic_1)) or ((dout_V_data_1_state = ap_const_lv2_2) and (dout_V_data_1_vld_in = ap_const_logic_1)) or (not(((dout_V_data_1_vld_in = ap_const_logic_0) and (dout_V_data_1_ack_out = ap_const_logic_1))) and not(((dout_V_data_1_ack_out = ap_const_logic_0) and (dout_V_data_1_vld_in = ap_const_logic_1))) and (dout_V_data_1_state = ap_const_lv2_3)))) then 
                    dout_V_data_1_state <= ap_const_lv2_3;
                else 
                    dout_V_data_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    dout_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dout_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((dout_V_last_V_1_ack_out = ap_const_logic_1) and (dout_V_last_V_1_vld_out = ap_const_logic_1))) then 
                                        dout_V_last_V_1_sel_rd <= not(dout_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    dout_V_last_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dout_V_last_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((dout_V_last_V_1_ack_in = ap_const_logic_1) and (dout_V_last_V_1_vld_in = ap_const_logic_1))) then 
                                        dout_V_last_V_1_sel_wr <= not(dout_V_last_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    dout_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dout_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((dout_V_last_V_1_state = ap_const_lv2_2) and (dout_V_last_V_1_vld_in = ap_const_logic_0)) or ((dout_V_last_V_1_state = ap_const_lv2_3) and (dout_V_last_V_1_vld_in = ap_const_logic_0) and (dout_V_last_V_1_ack_out = ap_const_logic_1)))) then 
                    dout_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((dout_V_last_V_1_state = ap_const_lv2_1) and (dout_V_last_V_1_ack_out = ap_const_logic_0)) or ((dout_V_last_V_1_state = ap_const_lv2_3) and (dout_V_last_V_1_ack_out = ap_const_logic_0) and (dout_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    dout_V_last_V_1_state <= ap_const_lv2_1;
                elsif (((not(((dout_V_last_V_1_vld_in = ap_const_logic_0) and (dout_V_last_V_1_ack_out = ap_const_logic_1))) and not(((dout_V_last_V_1_ack_out = ap_const_logic_0) and (dout_V_last_V_1_vld_in = ap_const_logic_1))) and (dout_V_last_V_1_state = ap_const_lv2_3)) or ((dout_V_last_V_1_state = ap_const_lv2_1) and (dout_V_last_V_1_ack_out = ap_const_logic_1)) or ((dout_V_last_V_1_state = ap_const_lv2_2) and (dout_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    dout_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    dout_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i1_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_12_reg_173 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i1_reg_104 <= tmp_reg_168;
            elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_12_reg_173 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                i1_reg_104 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((dout_V_data_1_load_A = ap_const_logic_1)) then
                dout_V_data_1_payload_A <= tmp_data_fu_129_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((dout_V_data_1_load_B = ap_const_logic_1)) then
                dout_V_data_1_payload_B <= tmp_data_fu_129_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((dout_V_last_V_1_load_A = ap_const_logic_1)) then
                dout_V_last_V_1_payload_A <= tmp_last_V_fu_122_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((dout_V_last_V_1_load_B = ap_const_logic_1)) then
                dout_V_last_V_1_payload_B <= tmp_last_V_fu_122_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_12_reg_173 <= i_fu_138_p2(10 downto 10);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_168 <= tmp_fu_144_p1;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, windowed_0_empty_n, windowed_1_empty_n, dout_V_data_1_ack_in, dout_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((dout_V_last_V_1_ack_in = ap_const_logic_0) or (dout_V_data_1_ack_in = ap_const_logic_0))) or ((ap_start = ap_const_logic_1) and ((windowed_1_empty_n = ap_const_logic_0) or (windowed_0_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, windowed_0_empty_n, windowed_1_empty_n, dout_V_data_1_ack_in, dout_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((dout_V_last_V_1_ack_in = ap_const_logic_0) or (dout_V_data_1_ack_in = ap_const_logic_0))) or ((ap_start = ap_const_logic_1) and ((dout_V_data_1_ack_in = ap_const_logic_0) or (windowed_1_empty_n = ap_const_logic_0) or (windowed_0_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, windowed_0_empty_n, windowed_1_empty_n, dout_V_data_1_ack_in, dout_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((dout_V_last_V_1_ack_in = ap_const_logic_0) or (dout_V_data_1_ack_in = ap_const_logic_0))) or ((ap_start = ap_const_logic_1) and ((dout_V_data_1_ack_in = ap_const_logic_0) or (windowed_1_empty_n = ap_const_logic_0) or (windowed_0_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(windowed_0_empty_n, windowed_1_empty_n)
    begin
                ap_block_state2_pp0_stage0_iter0 <= ((windowed_1_empty_n = ap_const_logic_0) or (windowed_0_empty_n = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(dout_V_data_1_ack_in, dout_V_last_V_1_ack_in)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((dout_V_last_V_1_ack_in = ap_const_logic_0) or (dout_V_data_1_ack_in = ap_const_logic_0));
    end process;


    ap_condition_195_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
                ap_condition_195 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, tmp_12_reg_173)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_12_reg_173 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_phi_mux_i1_phi_fu_108_p6_assign_proc : process(i1_reg_104, tmp_reg_168, tmp_12_reg_173, ap_condition_195)
    begin
        if ((ap_const_boolean_1 = ap_condition_195)) then
            if ((tmp_12_reg_173 = ap_const_lv1_1)) then 
                ap_phi_mux_i1_phi_fu_108_p6 <= ap_const_lv10_0;
            elsif ((tmp_12_reg_173 = ap_const_lv1_0)) then 
                ap_phi_mux_i1_phi_fu_108_p6 <= tmp_reg_168;
            else 
                ap_phi_mux_i1_phi_fu_108_p6 <= i1_reg_104;
            end if;
        else 
            ap_phi_mux_i1_phi_fu_108_p6 <= i1_reg_104;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, tmp_12_fu_148_p3, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_12_fu_148_p3 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    dout_TDATA <= dout_V_data_1_data_out;

    dout_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, dout_V_data_1_state, ap_block_pp0_stage0)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            dout_TDATA_blk_n <= dout_V_data_1_state(1);
        else 
            dout_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_TLAST <= dout_V_last_V_1_data_out;
    dout_TVALID <= dout_V_last_V_1_state(0);
    dout_V_data_1_ack_in <= dout_V_data_1_state(1);
    dout_V_data_1_ack_out <= dout_TREADY;

    dout_V_data_1_data_out_assign_proc : process(dout_V_data_1_payload_A, dout_V_data_1_payload_B, dout_V_data_1_sel)
    begin
        if ((dout_V_data_1_sel = ap_const_logic_1)) then 
            dout_V_data_1_data_out <= dout_V_data_1_payload_B;
        else 
            dout_V_data_1_data_out <= dout_V_data_1_payload_A;
        end if; 
    end process;

    dout_V_data_1_load_A <= (not(dout_V_data_1_sel_wr) and dout_V_data_1_state_cmp_full);
    dout_V_data_1_load_B <= (dout_V_data_1_state_cmp_full and dout_V_data_1_sel_wr);
    dout_V_data_1_sel <= dout_V_data_1_sel_rd;
    dout_V_data_1_state_cmp_full <= '0' when (dout_V_data_1_state = ap_const_lv2_1) else '1';

    dout_V_data_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dout_V_data_1_vld_in <= ap_const_logic_1;
        else 
            dout_V_data_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    dout_V_data_1_vld_out <= dout_V_data_1_state(0);
    dout_V_last_V_1_ack_in <= dout_V_last_V_1_state(1);
    dout_V_last_V_1_ack_out <= dout_TREADY;

    dout_V_last_V_1_data_out_assign_proc : process(dout_V_last_V_1_payload_A, dout_V_last_V_1_payload_B, dout_V_last_V_1_sel)
    begin
        if ((dout_V_last_V_1_sel = ap_const_logic_1)) then 
            dout_V_last_V_1_data_out <= dout_V_last_V_1_payload_B;
        else 
            dout_V_last_V_1_data_out <= dout_V_last_V_1_payload_A;
        end if; 
    end process;

    dout_V_last_V_1_load_A <= (not(dout_V_last_V_1_sel_wr) and dout_V_last_V_1_state_cmp_full);
    dout_V_last_V_1_load_B <= (dout_V_last_V_1_state_cmp_full and dout_V_last_V_1_sel_wr);
    dout_V_last_V_1_sel <= dout_V_last_V_1_sel_rd;
    dout_V_last_V_1_state_cmp_full <= '0' when (dout_V_last_V_1_state = ap_const_lv2_1) else '1';

    dout_V_last_V_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dout_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            dout_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    dout_V_last_V_1_vld_out <= dout_V_last_V_1_state(0);
    i1_cast_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i1_phi_fu_108_p6),11));
    i_fu_138_p2 <= std_logic_vector(unsigned(ap_const_lv11_2) + unsigned(i1_cast_fu_118_p1));
    tmp_12_fu_148_p3 <= i_fu_138_p2(10 downto 10);
    tmp_data_fu_129_p3 <= (windowed_1_dout & windowed_0_dout);
    tmp_fu_144_p1 <= i_fu_138_p2(10 - 1 downto 0);
    tmp_last_V_fu_122_p2 <= "1" when (ap_phi_mux_i1_phi_fu_108_p6 = ap_const_lv10_3FE) else "0";

    windowed_0_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, windowed_0_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            windowed_0_blk_n <= windowed_0_empty_n;
        else 
            windowed_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    windowed_0_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            windowed_0_read <= ap_const_logic_1;
        else 
            windowed_0_read <= ap_const_logic_0;
        end if; 
    end process;


    windowed_1_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, windowed_1_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            windowed_1_blk_n <= windowed_1_empty_n;
        else 
            windowed_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    windowed_1_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            windowed_1_read <= ap_const_logic_1;
        else 
            windowed_1_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
