
/*******************************************************************
*
* CAUTION: This file is automatically generated by HSI.
* Version: 
* DO NOT EDIT.
*
* Copyright (C) 2010-2018 Xilinx, Inc. All Rights Reserved.*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the Software), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:
*
*The above copyright notice and this permission notice shall be included in
*all copies or substantial portions of the Software.
* 
* Use of the Software is limited solely to applications:
*(a) running on a Xilinx device, or
*(b) that interact with a Xilinx device through a bus or interconnect.
*
*THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
*XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
*WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
*OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
*Except as contained in this notice, the name of the Xilinx shall not be used
*in advertising or otherwise to promote the sale, use or other dealings in
*this Software without prior written authorization from Xilinx.
*

* 
* Description: Driver configuration
*
*******************************************************************/

#include "xparameters.h"
#include "xgpio.h"

/*
* The configuration table for devices
*/

XGpio_Config XGpio_ConfigTable[XPAR_XGPIO_NUM_INSTANCES] =
{
	{
		XPAR_PMOD_IN_DEVICE_ID,
		XPAR_PMOD_IN_BASEADDR,
		XPAR_PMOD_IN_INTERRUPT_PRESENT,
		XPAR_PMOD_IN_IS_DUAL
	},
	{
		XPAR_PMOD_OUT_DEVICE_ID,
		XPAR_PMOD_OUT_BASEADDR,
		XPAR_PMOD_OUT_INTERRUPT_PRESENT,
		XPAR_PMOD_OUT_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_CLK_125_DEVICE_ID,
		XPAR_CLOCK_COUNTER_CLK_125_BASEADDR,
		XPAR_CLOCK_COUNTER_CLK_125_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_CLK_125_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_CLK_74_25_DEVICE_ID,
		XPAR_CLOCK_COUNTER_CLK_74_25_BASEADDR,
		XPAR_CLOCK_COUNTER_CLK_74_25_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_CLK_74_25_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK0_M2C_DEVICE_ID,
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK0_M2C_BASEADDR,
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK0_M2C_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK0_M2C_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK1_M2C_DEVICE_ID,
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK1_M2C_BASEADDR,
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK1_M2C_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_FMC_HPC0_CLK1_M2C_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK0_M2C_DEVICE_ID,
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK0_M2C_BASEADDR,
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK0_M2C_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK0_M2C_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK1_M2C_DEVICE_ID,
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK1_M2C_BASEADDR,
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK1_M2C_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_FMC_HPC0_GBTCLK1_M2C_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_FMC_HPC1_CLK0_M2C_DEVICE_ID,
		XPAR_CLOCK_COUNTER_FMC_HPC1_CLK0_M2C_BASEADDR,
		XPAR_CLOCK_COUNTER_FMC_HPC1_CLK0_M2C_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_FMC_HPC1_CLK0_M2C_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_FMC_HPC1_GBTCLK0_M2C_DEVICE_ID,
		XPAR_CLOCK_COUNTER_FMC_HPC1_GBTCLK0_M2C_BASEADDR,
		XPAR_CLOCK_COUNTER_FMC_HPC1_GBTCLK0_M2C_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_FMC_HPC1_GBTCLK0_M2C_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_HDMI_RX_CLK_DEVICE_ID,
		XPAR_CLOCK_COUNTER_HDMI_RX_CLK_BASEADDR,
		XPAR_CLOCK_COUNTER_HDMI_RX_CLK_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_HDMI_RX_CLK_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_HDMI_SI5324_OUT_DEVICE_ID,
		XPAR_CLOCK_COUNTER_HDMI_SI5324_OUT_BASEADDR,
		XPAR_CLOCK_COUNTER_HDMI_SI5324_OUT_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_HDMI_SI5324_OUT_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_SFP_SI5328_OUT_DEVICE_ID,
		XPAR_CLOCK_COUNTER_SFP_SI5328_OUT_BASEADDR,
		XPAR_CLOCK_COUNTER_SFP_SI5328_OUT_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_SFP_SI5328_OUT_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK1_DEVICE_ID,
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK1_BASEADDR,
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK1_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK1_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK2_DEVICE_ID,
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK2_BASEADDR,
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK2_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_USER_MGT_SI570_CLOCK2_IS_DUAL
	},
	{
		XPAR_CLOCK_COUNTER_USER_SMA_MGT_CLOCK_DEVICE_ID,
		XPAR_CLOCK_COUNTER_USER_SMA_MGT_CLOCK_BASEADDR,
		XPAR_CLOCK_COUNTER_USER_SMA_MGT_CLOCK_INTERRUPT_PRESENT,
		XPAR_CLOCK_COUNTER_USER_SMA_MGT_CLOCK_IS_DUAL
	},
	{
		XPAR_DIP_SWITCHES_8BITS_DEVICE_ID,
		XPAR_DIP_SWITCHES_8BITS_BASEADDR,
		XPAR_DIP_SWITCHES_8BITS_INTERRUPT_PRESENT,
		XPAR_DIP_SWITCHES_8BITS_IS_DUAL
	},
	{
		XPAR_LED_8BITS_DEVICE_ID,
		XPAR_LED_8BITS_BASEADDR,
		XPAR_LED_8BITS_INTERRUPT_PRESENT,
		XPAR_LED_8BITS_IS_DUAL
	},
	{
		XPAR_PUSH_BUTTONS_5BITS_DEVICE_ID,
		XPAR_PUSH_BUTTONS_5BITS_BASEADDR,
		XPAR_PUSH_BUTTONS_5BITS_INTERRUPT_PRESENT,
		XPAR_PUSH_BUTTONS_5BITS_IS_DUAL
	}
};


