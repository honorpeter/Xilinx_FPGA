// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// HLS_MACC_PERIPH_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : reserved
// 0x14 : Data signal of a
//        bit 31~0 - a[31:0] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x20 : Control signal of accum
//        bit 0  - accum_ap_vld (Read/COR)
//        others - reserved
// 0x24 : Data signal of accum
//        bit 31~0 - accum[31:0] (Read)
// 0x28 : reserved
// 0x2c : Data signal of accum_clr
//        bit 0  - accum_clr[0] (Read/Write)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_AP_CTRL        0x00
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_GIE            0x04
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_IER            0x08
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_ISR            0x0c
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_A_DATA         0x14
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_BITS_A_DATA         32
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_B_DATA         0x1c
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_BITS_B_DATA         32
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_ACCUM_CTRL     0x20
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_ACCUM_DATA     0x24
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_BITS_ACCUM_DATA     32
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_ADDR_ACCUM_CLR_DATA 0x2c
#define XHLS_MACC_HLS_MACC_PERIPH_BUS_BITS_ACCUM_CLR_DATA 1

