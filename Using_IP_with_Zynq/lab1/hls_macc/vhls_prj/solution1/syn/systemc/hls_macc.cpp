// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "hls_macc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic hls_macc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic hls_macc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> hls_macc::ap_ST_fsm_state1 = "1";
const sc_lv<8> hls_macc::ap_ST_fsm_state2 = "10";
const sc_lv<8> hls_macc::ap_ST_fsm_state3 = "100";
const sc_lv<8> hls_macc::ap_ST_fsm_state4 = "1000";
const sc_lv<8> hls_macc::ap_ST_fsm_state5 = "10000";
const sc_lv<8> hls_macc::ap_ST_fsm_state6 = "100000";
const sc_lv<8> hls_macc::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> hls_macc::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> hls_macc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> hls_macc::ap_const_lv32_6 = "110";
const sc_lv<32> hls_macc::ap_const_lv32_7 = "111";
const bool hls_macc::ap_const_boolean_1 = true;

hls_macc::hls_macc(sc_module_name name) : sc_module(name), mVcdFile(0) {
    hls_macc_mul_32s_bkb_U1 = new hls_macc_mul_32s_bkb<1,7,32,32,32>("hls_macc_mul_32s_bkb_U1");
    hls_macc_mul_32s_bkb_U1->clk(ap_clk);
    hls_macc_mul_32s_bkb_U1->reset(ap_rst);
    hls_macc_mul_32s_bkb_U1->din0(b);
    hls_macc_mul_32s_bkb_U1->din1(a);
    hls_macc_mul_32s_bkb_U1->ce(ap_var_for_const0);
    hls_macc_mul_32s_bkb_U1->dout(grp_fu_59_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_accum);
    sensitive << ( tmp_1_reg_99 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( p_acc_reg_load_fu_69_p3 );

    SC_METHOD(thread_accum_ap_vld);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_p_acc_reg_load_fu_69_p3);
    sensitive << ( accum_clr );
    sensitive << ( acc_reg );

    SC_METHOD(thread_tmp_2_fu_77_p2);
    sensitive << ( tmp_1_reg_99 );
    sensitive << ( p_acc_reg_load_fu_69_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000001";
    acc_reg = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "hls_macc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, accum, "(port)accum");
    sc_trace(mVcdFile, accum_ap_vld, "(port)accum_ap_vld");
    sc_trace(mVcdFile, accum_clr, "(port)accum_clr");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, acc_reg, "acc_reg");
    sc_trace(mVcdFile, grp_fu_59_p2, "grp_fu_59_p2");
    sc_trace(mVcdFile, tmp_1_reg_99, "tmp_1_reg_99");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_2_fu_77_p2, "tmp_2_fu_77_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, p_acc_reg_load_fu_69_p3, "p_acc_reg_load_fu_69_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("hls_macc.hdltvin.dat");
    mHdltvoutHandle.open("hls_macc.hdltvout.dat");
}

hls_macc::~hls_macc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete hls_macc_mul_32s_bkb_U1;
}

void hls_macc::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void hls_macc::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        acc_reg = tmp_2_fu_77_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        tmp_1_reg_99 = grp_fu_59_p2.read();
    }
}

void hls_macc::thread_accum() {
    accum = (!p_acc_reg_load_fu_69_p3.read().is_01() || !tmp_1_reg_99.read().is_01())? sc_lv<32>(): (sc_biguint<32>(p_acc_reg_load_fu_69_p3.read()) + sc_biguint<32>(tmp_1_reg_99.read()));
}

void hls_macc::thread_accum_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        accum_ap_vld = ap_const_logic_1;
    } else {
        accum_ap_vld = ap_const_logic_0;
    }
}

void hls_macc::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void hls_macc::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void hls_macc::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void hls_macc::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void hls_macc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void hls_macc::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void hls_macc::thread_p_acc_reg_load_fu_69_p3() {
    p_acc_reg_load_fu_69_p3 = (!accum_clr.read()[0].is_01())? sc_lv<32>(): ((accum_clr.read()[0].to_bool())? ap_const_lv32_0: acc_reg.read());
}

void hls_macc::thread_tmp_2_fu_77_p2() {
    tmp_2_fu_77_p2 = (!p_acc_reg_load_fu_69_p3.read().is_01() || !tmp_1_reg_99.read().is_01())? sc_lv<32>(): (sc_biguint<32>(p_acc_reg_load_fu_69_p3.read()) + sc_biguint<32>(tmp_1_reg_99.read()));
}

void hls_macc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXX";
            break;
    }
}

void hls_macc::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a\" :  \"" << a.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b\" :  \"" << b.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"accum\" :  \"" << accum.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"accum_ap_vld\" :  \"" << accum_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"accum_clr\" :  \"" << accum_clr.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

