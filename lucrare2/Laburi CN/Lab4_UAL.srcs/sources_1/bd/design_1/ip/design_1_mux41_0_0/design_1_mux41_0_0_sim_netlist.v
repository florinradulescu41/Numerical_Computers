// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Mar 12 17:20:14 2019
// Host        : DESKTOP-P723BM5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/student/325CC/Lab4_UAL/Lab4_UAL.srcs/sources_1/bd/design_1/ip/design_1_mux41_0_0/design_1_mux41_0_0_sim_netlist.v
// Design      : design_1_mux41_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mux41_0_0,mux41,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mux41,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_mux41_0_0
   (sel,
    a,
    b,
    outf);
  input [1:0]sel;
  input [0:0]a;
  input [0:0]b;
  output [0:0]outf;

  wire [0:0]a;
  wire [0:0]b;
  wire [0:0]outf;
  wire [1:0]sel;

  design_1_mux41_0_0_mux41 inst
       (.a(a),
        .b(b),
        .outf(outf),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "mux41" *) 
module design_1_mux41_0_0_mux41
   (outf,
    sel,
    a,
    b);
  output [0:0]outf;
  input [1:0]sel;
  input [0:0]a;
  input [0:0]b;

  wire [0:0]a;
  wire [0:0]b;
  wire [0:0]outf;
  wire [1:0]sel;

  LUT4 #(
    .INIT(16'h6B38)) 
    outf__0
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(a),
        .I3(b),
        .O(outf));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
