`timescale 1ns/1ns

module test_numarator();
	
	reg clk, reset;
	wire [3:0] counter;
	numarator n(clk, reset, counter);

	initial begin 
	$dumpfile("numarator.vcd");
	$dumpvars;

	clk=0;

	forever #5 clk=~clk;

	end

	initial begin
	reset=1;
	#60;
	reset=0;

	$finish;

	end
endmodule
