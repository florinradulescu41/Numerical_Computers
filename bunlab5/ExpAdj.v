
module ExpAdj(input [7:0] exp, input [8:0] val2, output [7:0] result);

	reg [7:0] diff;
	
	always @ (exp or val2) begin
		result = exp;
		diff = val2[7:0];
		if (val2[8] == 0) begin
			result = result + 1;
		end
		else begin
			result = result - diff;
		end
	end

endmodule
