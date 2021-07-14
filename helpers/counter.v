`timescale 1ns/1ns

module numarator(input clk, reset, output[3:0] counter);

	reg [3:0] numarator;

	always @(posedge clk or posedge reset)

	begin
	if(reset)
	 numarator <= 4'd0;
	else
	 numarator <= numarator + 4'd1;
	end 
	assign counter = numarator;

endmodule
