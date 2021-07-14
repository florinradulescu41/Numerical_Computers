
module ExpAdder(input [15:0] exps, output [8:0] val1, output [15:0] result);
	
	reg [7:0] exp1;
	reg [7:0] exp2;
	reg signed [7:0] diff;

	always @ (exps) begin
		exp1 = 0;
		exp2 = 0;
		result = exps;

		exp1 = exp[7:0];
		exp2 = exp[15:8];
		diff = exp1 - exp2;
		val1[7:0] = diff;

	if (diff <= 0) begin
		val1 = -val1;
		val[8] = 0;
		end

	if (diff > 0) begin
		val1[8] = 1;
		end

	end
endmodule	
	
	
