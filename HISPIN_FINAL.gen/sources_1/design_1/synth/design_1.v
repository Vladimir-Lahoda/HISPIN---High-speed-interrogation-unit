//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed May 18 11:15:26 2022
//Host        : DESKTOP-LBJ6I94 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (BTN_0,
    CONVST,
    CS,
    DB,
    EOC,
    IO1,
    LEDs,
    MISO,
    RD,
    RGB_LED,
    SCK,
    SEND,
    SHDN,
    SS,
    START,
    WR,
    clk_in);
  input BTN_0;
  output CONVST;
  output CS;
  input [15:0]DB;
  input EOC;
  output IO1;
  output [3:0]LEDs;
  output MISO;
  output RD;
  output [2:0]RGB_LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SCK, ASSOCIATED_RESET SS, CLK_DOMAIN design_1_SCK, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input SCK;
  output SEND;
  output [0:0]SHDN;
  input SS;
  input START;
  output [0:0]WR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, CLK_DOMAIN design_1_clk_in, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_in;

  wire [15:0]DB_1;
  wire EOC_1;
  wire [127:0]MUX_1to2_128bit_0_B0;
  wire [127:0]MUX_1to2_128bit_0_B1;
  wire [7:0]Net;
  wire Net1;
  wire SCK_1;
  wire SEND_DECODER_0_SEND;
  wire SPI_CNTRL_0_AXI_READY;
  wire [1:0]SPI_CNTRL_0_MUX_CNTRL1;
  wire SPI_CNTRL_0_o_miso;
  wire SPI_CNTRL_0_o_sclk_1;
  wire SPI_CNTRL_0_o_ss_0;
  wire SPI_CNTRL_0_o_ss_1;
  wire SS_1;
  wire START_1;
  wire [3:0]STATUS_LED_0_LEDs;
  wire [2:0]STATUS_LED_0_RGB;
  wire [31:0]axis_data_fifo_0_axis_wr_data_count;
  wire [127:0]axis_data_fifo_0_m_axis_tdata;
  wire axis_data_fifo_0_m_axis_tvalid;
  wire axis_data_fifo_0_s_axis_tready;
  wire [10:0]c_counter_binary_0_Q;
  wire [7:0]c_counter_binary_1_Q;
  wire [11:0]c_counter_binary_2_Q;
  wire clk_in_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire [127:0]data_expander_0_Q;
  wire driver_0_AXI_valid;
  wire driver_0_CONVSTRT;
  wire driver_0_CS;
  wire driver_0_RD;
  wire spi_slave_0_o_miso;
  wire spi_slave_1_o_miso;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign CONVST = driver_0_CONVSTRT;
  assign CS = driver_0_CS;
  assign DB_1 = DB[15:0];
  assign EOC_1 = EOC;
  assign LEDs[3:0] = STATUS_LED_0_LEDs;
  assign MISO = SPI_CNTRL_0_o_miso;
  assign RD = driver_0_RD;
  assign RGB_LED[2:0] = STATUS_LED_0_RGB;
  assign SCK_1 = SCK;
  assign SEND = SEND_DECODER_0_SEND;
  assign SHDN[0] = xlconstant_0_dout;
  assign SS_1 = SS;
  assign START_1 = START;
  assign WR[0] = xlconstant_1_dout;
  assign clk_in_1 = clk_in;
  design_1_MUX_1to2_128bit_0_0 MUX_1to2_128bit_0
       (.A(axis_data_fifo_0_m_axis_tdata),
        .B0(MUX_1to2_128bit_0_B0),
        .B1(MUX_1to2_128bit_0_B1),
        .S(SPI_CNTRL_0_MUX_CNTRL1),
        .clk(clk_wiz_0_clk_out1));
  design_1_SEND_DECODER_0_0 SEND_DECODER_0
       (.D(c_counter_binary_2_Q),
        .SEND(SEND_DECODER_0_SEND),
        .clk(clk_wiz_0_clk_out1));
  design_1_SPI_CNTRL_0_0 SPI_CNTRL_0
       (.AXI_READY(SPI_CNTRL_0_AXI_READY),
        .AXI_VALID(axis_data_fifo_0_m_axis_tvalid),
        .MUX_CNTRL1(SPI_CNTRL_0_MUX_CNTRL1),
        .NUM(c_counter_binary_1_Q),
        .clock_sig(clk_wiz_0_clk_out1),
        .i_miso_0(spi_slave_0_o_miso),
        .i_miso_1(spi_slave_1_o_miso),
        .i_sclk(SCK_1),
        .i_ss(SS_1),
        .o_miso(SPI_CNTRL_0_o_miso),
        .o_sclk_0(Net1),
        .o_sclk_1(SPI_CNTRL_0_o_sclk_1),
        .o_ss_0(SPI_CNTRL_0_o_ss_0),
        .o_ss_1(SPI_CNTRL_0_o_ss_1));
  design_1_STATUS_LED_0_0 STATUS_LED_0
       (.AD_VALID(driver_0_AXI_valid),
        .FIFO_STATUS(axis_data_fifo_0_axis_wr_data_count),
        .LEDs(STATUS_LED_0_LEDs),
        .RGB(STATUS_LED_0_RGB),
        .SPI_SS(SS_1),
        .clk(clk_wiz_0_clk_out1));
  design_1_axis_data_fifo_0_0 axis_data_fifo_0
       (.axis_wr_data_count(axis_data_fifo_0_axis_wr_data_count),
        .m_axis_aclk(clk_wiz_0_clk_out2),
        .m_axis_tdata(axis_data_fifo_0_m_axis_tdata),
        .m_axis_tready(SPI_CNTRL_0_AXI_READY),
        .m_axis_tvalid(axis_data_fifo_0_m_axis_tvalid),
        .s_axis_aclk(clk_wiz_0_clk_out1),
        .s_axis_aresetn(START_1),
        .s_axis_tdata(data_expander_0_Q),
        .s_axis_tready(axis_data_fifo_0_s_axis_tready),
        .s_axis_tvalid(driver_0_AXI_valid));
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clk_wiz_0_clk_out1),
        .Q(c_counter_binary_0_Q));
  design_1_c_counter_binary_1_0 c_counter_binary_1
       (.CLK(SCK_1),
        .Q(c_counter_binary_1_Q),
        .SCLR(SS_1));
  design_1_c_counter_binary_2_0 c_counter_binary_2
       (.CLK(driver_0_AXI_valid),
        .Q(c_counter_binary_2_Q));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
  design_1_data_expander_0_0 data_expander_0
       (.ADDR(Net),
        .CLK(clk_wiz_0_clk_out1),
        .D(DB_1),
        .Q(data_expander_0_Q));
  design_1_driver_0_0 driver_0
       (.AXI_EN(xlconstant_1_dout),
        .AXI_ready(axis_data_fifo_0_s_axis_tready),
        .AXI_valid(driver_0_AXI_valid),
        .CONVSTRT(driver_0_CONVSTRT),
        .CS(driver_0_CS),
        .D_valid(Net),
        .EOC(EOC_1),
        .Q(c_counter_binary_0_Q),
        .RD(driver_0_RD),
        .clk(clk_wiz_0_clk_out1));
  design_1_spi_slave_0_0 spi_slave_0
       (.i_data_parallel(MUX_1to2_128bit_0_B0),
        .i_sclk(Net1),
        .i_ss(SPI_CNTRL_0_o_ss_0),
        .o_miso(spi_slave_0_o_miso));
  design_1_spi_slave_0_1 spi_slave_1
       (.i_data_parallel(MUX_1to2_128bit_0_B1),
        .i_sclk(SPI_CNTRL_0_o_sclk_1),
        .i_ss(SPI_CNTRL_0_o_ss_1),
        .o_miso(spi_slave_1_o_miso));
  design_1_system_ila_0_0 system_ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(SS_1),
        .probe1(SCK_1),
        .probe10(driver_0_AXI_valid),
        .probe11(driver_0_CONVSTRT),
        .probe12(EOC_1),
        .probe13(driver_0_CS),
        .probe14(driver_0_RD),
        .probe15(DB_1),
        .probe16(axis_data_fifo_0_m_axis_tdata),
        .probe17(SPI_CNTRL_0_AXI_READY),
        .probe18(axis_data_fifo_0_axis_wr_data_count),
        .probe19(c_counter_binary_2_Q),
        .probe2(SPI_CNTRL_0_o_miso),
        .probe20(SEND_DECODER_0_SEND),
        .probe3(SPI_CNTRL_0_o_ss_0),
        .probe4(Net1),
        .probe5(spi_slave_0_o_miso),
        .probe6(SPI_CNTRL_0_o_ss_1),
        .probe7(SPI_CNTRL_0_o_sclk_1),
        .probe8(spi_slave_1_o_miso),
        .probe9(c_counter_binary_1_Q));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
