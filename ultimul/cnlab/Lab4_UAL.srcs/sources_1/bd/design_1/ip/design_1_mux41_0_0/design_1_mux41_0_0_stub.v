// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Mar 12 17:20:14 2019
// Host        : DESKTOP-P723BM5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/student/325CC/Lab4_UAL/Lab4_UAL.srcs/sources_1/bd/design_1/ip/design_1_mux41_0_0/design_1_mux41_0_0_stub.v
// Design      : design_1_mux41_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux41,Vivado 2018.3" *)
module design_1_mux41_0_0(sel, a, b, outf)
/* synthesis syn_black_box black_box_pad_pin="sel[1:0],a[0:0],b[0:0],outf[0:0]" */;
  input [1:0]sel;
  input [0:0]a;
  input [0:0]b;
  output [0:0]outf;
endmodule
