//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat May  2 08:22:03 2020
//Host        : Cartof-PC running 64-bit major release  (build 9200)
//Command     : generate_target fp_arithmetic.bd
//Design      : fp_arithmetic
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fp_arithmetic,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fp_arithmetic,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "fp_arithmetic.hwdef" *) 
module fp_arithmetic
   (clk,
    exponent_out,
    exponentii,
    load,
    mantisa_out,
    mantisele,
    operatie,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN fp_arithmetic_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output [7:0]exponent_out;
  input [15:0]exponentii;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LOAD CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LOAD, CLK_DOMAIN fp_arithmetic_clk1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input load;
  output [23:0]mantisa_out;
  input [47:0]mantisele;
  input operatie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RESET CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RESET, CLK_DOMAIN fp_arithmetic_clk1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input reset;

  wire [15:0]Modulul_1_0_fw_exp;
  wire [8:0]Modulul_1_0_valoarea1;
  wire [7:0]Modulul_2_0_exp_ales;
  wire [7:0]Modulul_3_0_exponent_bun;
  wire [47:0]Modulul_4_0_mantise;
  wire [25:0]Modulul_5_0_outp;
  wire [23:0]Modulul_6_0_mantisa;
  wire [8:0]Modulul_6_0_valoarea2;
  wire [56:0]Modulul_7_0_out;
  wire [15:0]Registru_16_biti_0_out;
  wire [15:0]Registru_16_biti_1_out;
  wire [23:0]Registru_24_biti_0_out;
  wire [25:0]Registru_26_biti_0_outp;
  wire [47:0]Registru_48_biti_0_out;
  wire [47:0]Registru_48_biti_1_out;
  wire [56:0]Registru_57_biti_0_out;
  wire [7:0]Registru_8_biti_0_outp;
  wire [7:0]Registru_8_biti_1_out;
  wire [7:0]Registru_8_biti_2_out;
  wire clk_0_1;
  wire [15:0]exponentii_1;
  wire [47:0]in_0_1;
  wire load_1;
  wire op_0_1;
  wire reset_1;

  assign clk_0_1 = clk;
  assign exponent_out[7:0] = Registru_8_biti_2_out;
  assign exponentii_1 = exponentii[15:0];
  assign in_0_1 = mantisele[47:0];
  assign load_1 = load;
  assign mantisa_out[23:0] = Registru_24_biti_0_out;
  assign op_0_1 = operatie;
  assign reset_1 = reset;
  fp_arithmetic_Modulul_1_0_0 Modulul_1_0
       (.exponenti(Registru_16_biti_0_out),
        .fw_exp(Modulul_1_0_fw_exp),
        .valoarea1(Modulul_1_0_valoarea1));
  fp_arithmetic_Modulul_2_0_0 Modulul_2_0
       (.exp_ales(Modulul_2_0_exp_ales),
        .exponenti(Registru_16_biti_1_out));
  fp_arithmetic_Modulul_3_0_0 Modulul_3_0
       (.exponent(Registru_8_biti_1_out),
        .exponent_bun(Modulul_3_0_exponent_bun),
        .valoarea2(Modulul_6_0_valoarea2));
  fp_arithmetic_Modulul_4_0_0 Modulul_4_0
       (.inp(Registru_57_biti_0_out),
        .mantise(Modulul_4_0_mantise));
  fp_arithmetic_Modulul_5_0_0 Modulul_5_0
       (.mantise(Registru_48_biti_1_out),
        .op(op_0_1),
        .outp(Modulul_5_0_outp));
  fp_arithmetic_Modulul_6_0_0 Modulul_6_0
       (.inp(Registru_26_biti_0_outp),
        .mantisa(Modulul_6_0_mantisa),
        .valoarea2(Modulul_6_0_valoarea2));
  fp_arithmetic_Modulul_7_0_0 Modulul_7_0
       (.mantise(Registru_48_biti_0_out),
        .outp(Modulul_7_0_out),
        .val1(Modulul_1_0_valoarea1));
  fp_arithmetic_Registru_16_biti_0_0 Registru_16_biti_0
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(exponentii_1),
        .ld(load_1),
        .outp(Registru_16_biti_0_out));
  fp_arithmetic_Registru_16_biti_1_0 Registru_16_biti_1
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_1_0_fw_exp),
        .ld(load_1),
        .outp(Registru_16_biti_1_out));
  fp_arithmetic_Registru_24_biti_0_0 Registru_24_biti_0
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_6_0_mantisa),
        .ld(load_1),
        .outp(Registru_24_biti_0_out));
  fp_arithmetic_Registru_26_biti_0_0 Registru_26_biti_0
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_5_0_outp),
        .ld(load_1),
        .outp(Registru_26_biti_0_outp));
  fp_arithmetic_Registru_48_biti_0_0 Registru_48_biti_0
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(in_0_1),
        .ld(load_1),
        .outp(Registru_48_biti_0_out));
  fp_arithmetic_Registru_48_biti_1_0 Registru_48_biti_1
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_4_0_mantise),
        .ld(load_1),
        .outp(Registru_48_biti_1_out));
  fp_arithmetic_Registru_57_biti_0_0 Registru_57_biti_0
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_7_0_out),
        .ld(load_1),
        .outp(Registru_57_biti_0_out));
  fp_arithmetic_Registru_8_biti_0_0 Registru_8_biti_0
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_2_0_exp_ales),
        .ld(load_1),
        .outp(Registru_8_biti_0_outp));
  fp_arithmetic_Registru_8_biti_1_0 Registru_8_biti_1
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Registru_8_biti_0_outp),
        .ld(load_1),
        .outp(Registru_8_biti_1_out));
  fp_arithmetic_Registru_8_biti_2_0 Registru_8_biti_2
       (.clk(clk_0_1),
        .clr(reset_1),
        .inp(Modulul_3_0_exponent_bun),
        .ld(load_1),
        .outp(Registru_8_biti_2_out));
endmodule
