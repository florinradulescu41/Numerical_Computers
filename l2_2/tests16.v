module tests16();

	reg[15:0] a, b;
	reg c;
	wire cout;
	wire[15:0] sum;

	sumator16 s(a, b, c, sum, cout);
	
	initial
	begin
		a = 0;
		b = 0;
		c = 0;
		#20 a = 16'b1010010101101011;
		#20 b = 16'b0101101010110011;
	end
endmodule;
