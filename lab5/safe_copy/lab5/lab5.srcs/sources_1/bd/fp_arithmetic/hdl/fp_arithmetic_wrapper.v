//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat May  2 08:22:03 2020
//Host        : Cartof-PC running 64-bit major release  (build 9200)
//Command     : generate_target fp_arithmetic_wrapper.bd
//Design      : fp_arithmetic_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fp_arithmetic_wrapper
   (clk,
    exponent_out,
    exponentii,
    load,
    mantisa_out,
    mantisele,
    operatie,
    reset);
  input clk;
  output [7:0]exponent_out;
  input [15:0]exponentii;
  input load;
  output [23:0]mantisa_out;
  input [47:0]mantisele;
  input operatie;
  input reset;

  wire clk;
  wire [7:0]exponent_out;
  wire [15:0]exponentii;
  wire load;
  wire [23:0]mantisa_out;
  wire [47:0]mantisele;
  wire operatie;
  wire reset;

  fp_arithmetic fp_arithmetic_i
       (.clk(clk),
        .exponent_out(exponent_out),
        .exponentii(exponentii),
        .load(load),
        .mantisa_out(mantisa_out),
        .mantisele(mantisele),
        .operatie(operatie),
        .reset(reset));
endmodule
