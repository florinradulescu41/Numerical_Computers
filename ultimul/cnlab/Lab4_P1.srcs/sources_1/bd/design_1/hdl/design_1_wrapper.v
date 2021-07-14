//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Mar 12 16:20:27 2019
//Host        : DESKTOP-P723BM5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (a,
    b,
    c,
    clk,
    res);
  input [0:0]a;
  input [0:0]b;
  input [0:0]c;
  input clk;
  output [0:0]res;

  wire [0:0]a;
  wire [0:0]b;
  wire [0:0]c;
  wire clk;
  wire [0:0]res;

  design_1 design_1_i
       (.a(a),
        .b(b),
        .c(c),
        .clk(clk),
        .res(res));
endmodule
