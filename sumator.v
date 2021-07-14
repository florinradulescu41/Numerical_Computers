module sumator(a, b, carry_in, sum, p, q);
	input a, b, carry_in;
	output sum, p, q;
	assign p = a ^ b;
	assign q = a & b;
	assign sum = (a ^ b) ^ carry_in;
endmodule
