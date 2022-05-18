//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu May  5 07:42:21 2022
//Host        : N304PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input SCK;
  output SEND;
  output [0:0]SHDN;
  input SS;
  input START;
  output [0:0]WR;
  input clk_in;

  wire BTN_0;
  wire CONVST;
  wire CS;
  wire [15:0]DB;
  wire EOC;
  wire IO1;
  wire [3:0]LEDs;
  wire MISO;
  wire RD;
  wire [2:0]RGB_LED;
  wire SCK;
  wire SEND;
  wire [0:0]SHDN;
  wire SS;
  wire START;
  wire [0:0]WR;
  wire clk_in;

  design_1 design_1_i
       (.BTN_0(BTN_0),
        .CONVST(CONVST),
        .CS(CS),
        .DB(DB),
        .EOC(EOC),
        .IO1(IO1),
        .LEDs(LEDs),
        .MISO(MISO),
        .RD(RD),
        .RGB_LED(RGB_LED),
        .SCK(SCK),
        .SEND(SEND),
        .SHDN(SHDN),
        .SS(SS),
        .START(START),
        .WR(WR),
        .clk_in(clk_in));
endmodule
