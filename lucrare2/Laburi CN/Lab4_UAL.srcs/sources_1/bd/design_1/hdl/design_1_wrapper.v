//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Mar 12 17:19:36 2019
//Host        : DESKTOP-P723BM5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk,
    out_0);
  input clk;
  output [0:0]out_0;

  wire clk;
  wire [0:0]out_0;

  design_1 design_1_i
       (.clk(clk),
        .out_0(out_0));
endmodule
