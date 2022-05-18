// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:SPI_CNTRL:1.0
// IP Revision: 1

(* X_CORE_INFO = "SPI_CNTRL,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_SPI_CNTRL_0_0,SPI_CNTRL,{}" *)
(* CORE_GENERATION_INFO = "design_1_SPI_CNTRL_0_0,SPI_CNTRL,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_CNTRL,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_SPI_CNTRL_0_0 (
  i_sclk,
  o_sclk_0,
  o_sclk_1,
  i_ss,
  o_ss_0,
  o_ss_1,
  o_miso,
  i_miso_0,
  i_miso_1,
  clock_sig,
  NUM,
  MUX_CNTRL1,
  AXI_VALID,
  AXI_READY
);

input wire i_sclk;
output wire o_sclk_0;
output wire o_sclk_1;
input wire i_ss;
output wire o_ss_0;
output wire o_ss_1;
output wire o_miso;
input wire i_miso_0;
input wire i_miso_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_sig, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_sig CLK" *)
input wire clock_sig;
input wire [7 : 0] NUM;
output wire [1 : 0] MUX_CNTRL1;
input wire AXI_VALID;
output wire AXI_READY;

  SPI_CNTRL inst (
    .i_sclk(i_sclk),
    .o_sclk_0(o_sclk_0),
    .o_sclk_1(o_sclk_1),
    .i_ss(i_ss),
    .o_ss_0(o_ss_0),
    .o_ss_1(o_ss_1),
    .o_miso(o_miso),
    .i_miso_0(i_miso_0),
    .i_miso_1(i_miso_1),
    .clock_sig(clock_sig),
    .NUM(NUM),
    .MUX_CNTRL1(MUX_CNTRL1),
    .AXI_VALID(AXI_VALID),
    .AXI_READY(AXI_READY)
  );
endmodule
