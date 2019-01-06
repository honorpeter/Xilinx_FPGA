-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_ap_vld : OUT STD_LOGIC;
    c_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    x : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir,hls_ip_2017_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.152000,HLS_SYN_LAT=34,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=175,HLS_SYN_LUT=183}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal shift_reg_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce0 : STD_LOGIC;
    signal shift_reg_we0 : STD_LOGIC;
    signal shift_reg_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_fu_130_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_reg_179 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_188 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_134_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_fu_123_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_1_reg_207 : STD_LOGIC_VECTOR (4 downto 0);
    signal acc_1_fu_167_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal acc_reg_89 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_i_phi_fu_106_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_102 : STD_LOGIC_VECTOR (4 downto 0);
    signal data1_reg_114 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_148_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_153_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_157_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_123_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_6_fu_161_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_161_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component fir_shift_reg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    shift_reg_U : component fir_shift_reg
    generic map (
        DataWidth => 32,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => shift_reg_address0,
        ce0 => shift_reg_ce0,
        we0 => shift_reg_we0,
        d0 => shift_reg_d0,
        q0 => shift_reg_q0);





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


    acc_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                acc_reg_89 <= acc_1_fu_167_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                acc_reg_89 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    data1_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_188 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                data1_reg_114 <= shift_reg_q0;
            elsif (((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                data1_reg_114 <= x;
            end if; 
        end if;
    end process;

    i_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_reg_102 <= i_1_reg_207;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_102 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_1_reg_207 <= grp_fu_123_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_cast_reg_179 <= i_cast_fu_130_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_134_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_1_reg_188 <= tmp_1_fu_142_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_134_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_134_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    acc_1_fu_167_p2 <= std_logic_vector(unsigned(tmp_6_fu_161_p2) + unsigned(acc_reg_89));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_134_p3)
    begin
        if (((tmp_fu_134_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_i_phi_fu_106_p4 <= i_reg_102;

    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_134_p3)
    begin
        if (((tmp_fu_134_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_address0 <= tmp_5_fu_157_p1(4 - 1 downto 0);

    c_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_123_p0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_phi_mux_i_phi_fu_106_p4, i_reg_102)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_123_p0 <= i_reg_102;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_123_p0 <= ap_phi_mux_i_phi_fu_106_p4;
        else 
            grp_fu_123_p0 <= "XXXXX";
        end if; 
    end process;

    grp_fu_123_p2 <= std_logic_vector(unsigned(grp_fu_123_p0) + unsigned(ap_const_lv5_1F));
        i_cast_fu_130_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_reg_102),32));


    shift_reg_address0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_142_p2, tmp_fu_134_p3, ap_CS_fsm_state3, tmp_3_fu_148_p1, tmp_4_fu_153_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            shift_reg_address0 <= tmp_4_fu_153_p1(4 - 1 downto 0);
        elsif (((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            shift_reg_address0 <= ap_const_lv4_0;
        elsif (((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            shift_reg_address0 <= tmp_3_fu_148_p1(4 - 1 downto 0);
        else 
            shift_reg_address0 <= "XXXX";
        end if; 
    end process;


    shift_reg_ce0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_142_p2, tmp_fu_134_p3, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            shift_reg_ce0 <= ap_const_logic_1;
        else 
            shift_reg_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_d0_assign_proc : process(x, shift_reg_q0, ap_CS_fsm_state2, tmp_1_fu_142_p2, tmp_fu_134_p3, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            shift_reg_d0 <= shift_reg_q0;
        elsif (((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            shift_reg_d0 <= x;
        else 
            shift_reg_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    shift_reg_we0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_142_p2, tmp_1_reg_188, tmp_fu_134_p3, ap_CS_fsm_state3)
    begin
        if ((((tmp_1_reg_188 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((tmp_fu_134_p3 = ap_const_lv1_0) and (tmp_1_fu_142_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            shift_reg_we0 <= ap_const_logic_1;
        else 
            shift_reg_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_142_p2 <= "1" when (i_reg_102 = ap_const_lv5_0) else "0";
    tmp_3_fu_148_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_123_p2),64));
    tmp_4_fu_153_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_cast_reg_179),64));
    tmp_5_fu_157_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_cast_reg_179),64));
    tmp_6_fu_161_p0 <= c_q0;
    tmp_6_fu_161_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_6_fu_161_p0) * signed(data1_reg_114))), 32));
    tmp_fu_134_p3 <= i_reg_102(4 downto 4);
    y <= acc_reg_89;

    y_ap_vld_assign_proc : process(ap_CS_fsm_state2, tmp_fu_134_p3)
    begin
        if (((tmp_fu_134_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
