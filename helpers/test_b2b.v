`timescale 1ns/1ns

module test_b2b();
	
	reg [5:0] valoare_bin;
	wire [3:0] BCD0;
	wire [3:0] BCD1;
	bin2bcd b(valoare_bin, BCD0, BCD1);

	initial begin 
	$dumpfile("b2b.vcd");
	$dumpvars;

	valoare_bin=0;

	forever #5 valoare_bin=~valoare_bin;

	end

	initial begin
	#60;

	$finish;

	end
endmodule
