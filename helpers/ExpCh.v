
module ExpCh(input [15:0] exps, output [7:0] result);

	reg [7:0] exp1;
	reg [7:0] exp2;

	always @ (exps) begin

		exp1 = exp[7:0];
		exp2 = exp[15:8];

		if (exp1 > exp2)
			result = exp1;
		else
			result = exp2;
		end
endmodule
