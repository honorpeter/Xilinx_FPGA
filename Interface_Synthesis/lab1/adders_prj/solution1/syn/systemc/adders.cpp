// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "adders.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic adders::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<4> adders::ap_ST_fsm_state1 = "1";
const sc_lv<4> adders::ap_ST_fsm_state2 = "10";
const sc_lv<4> adders::ap_ST_fsm_state3 = "100";
const sc_lv<4> adders::ap_ST_fsm_state4 = "1000";
const sc_lv<32> adders::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> adders::ap_const_lv32_1 = "1";
const sc_lv<32> adders::ap_const_lv32_2 = "10";
const sc_lv<32> adders::ap_const_lv32_3 = "11";
const sc_logic adders::ap_const_logic_0 = sc_dt::Log_0;
const bool adders::ap_const_boolean_1 = true;

adders::adders(sc_module_name name) : sc_module(name), mVcdFile(0) {
    adders_add_32ns_3bkb_U1 = new adders_add_32ns_3bkb<1,2,32,32,32>("adders_add_32ns_3bkb_U1");
    adders_add_32ns_3bkb_U1->clk(ap_clk);
    adders_add_32ns_3bkb_U1->reset(ap_rst);
    adders_add_32ns_3bkb_U1->din0(in1);
    adders_add_32ns_3bkb_U1->din1(in3);
    adders_add_32ns_3bkb_U1->ce(ap_var_for_const0);
    adders_add_32ns_3bkb_U1->dout(grp_fu_42_p2);
    adders_add_32ns_3bkb_U2 = new adders_add_32ns_3bkb<1,2,32,32,32>("adders_add_32ns_3bkb_U2");
    adders_add_32ns_3bkb_U2->clk(ap_clk);
    adders_add_32ns_3bkb_U2->reset(ap_rst);
    adders_add_32ns_3bkb_U2->din0(tmp1_reg_63);
    adders_add_32ns_3bkb_U2->din1(in2);
    adders_add_32ns_3bkb_U2->ce(ap_var_for_const0);
    adders_add_32ns_3bkb_U2->dout(grp_fu_48_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_return);
    sensitive << ( grp_fu_48_p2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "adders_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, in1, "(port)in1");
    sc_trace(mVcdFile, in2, "(port)in2");
    sc_trace(mVcdFile, in3, "(port)in3");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_fu_42_p2, "grp_fu_42_p2");
    sc_trace(mVcdFile, tmp1_reg_63, "tmp1_reg_63");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_fu_48_p2, "grp_fu_48_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("adders.hdltvin.dat");
    mHdltvoutHandle.open("adders.hdltvout.dat");
}

adders::~adders() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete adders_add_32ns_3bkb_U1;
    delete adders_add_32ns_3bkb_U2;
}

void adders::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void adders::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        tmp1_reg_63 = grp_fu_42_p2.read();
    }
}

void adders::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void adders::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void adders::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void adders::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void adders::thread_ap_return() {
    ap_return = grp_fu_48_p2.read();
}

void adders::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

void adders::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"in1\" :  \"" << in1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in2\" :  \"" << in2.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in3\" :  \"" << in3.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

