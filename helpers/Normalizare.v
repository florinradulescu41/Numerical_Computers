
module Norm(input [25:0] val, output [23:0] norm, output [8:0] result)

	reg sign;
	reg carry;
	reg [7:0] shifts;
	reg zero;
	reg [22:0] man;

	always @ (val) begin
		zero = val[25];
		sign = val[24];
		carry = val[23];
		man = val[22:0];

		if (carry == 1) begin
			shifts = 1;
			man = man >>> 1;
			result = 9'b000000001;
		end
		else begin
			if (zero == 0) begin
				shifts = 0;
				while (man[22] == 0) begin
					man = man << 1;
					shifts = shifts + 1;
				end
				result = {1'b1, shifts};
			end
		end
	norm = {sign, man};
	end
endmodule
