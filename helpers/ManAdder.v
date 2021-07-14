
module ManAdder(input [47:0] man, input operation, output [25:0] result);

	reg [22:0] man1;
	reg sign1;
	reg [22:0] man2;
	reg sign2;
	reg [23:0] sum;
	reg sign;
	reg zero;

	always @ (man or operation) begin
		zero = 0;
		sign1 = man[47];
		man1 = man[46:24];
		sign2 = man[23];
		man2 = man[22:0];
		if (operation == 0)
			sign2 = ~sign2;
		if (sign1 == 1)
			if (sign2 == 1) begin
				sign = 1;
				sum = man1 + man2;
				sum = -sum;
			else
				sign = 0;
				sum = man2 - man1;
			end
		else
			if (sign2 == 0) begin
				sign = 0;
				sum = man1 + man2;
			else
				sign = 0;
				sum = man1 - man2;
			end

		if (sum == 0)
			zero = 1;

		result = {zero, sign, sum};		
	end
endmodule
