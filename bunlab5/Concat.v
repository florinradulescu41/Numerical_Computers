
module Concat(input [47:0] man, input [8:0] val1, output result);

	always @ (man or val1)
		result = {val1, man};
endmodule
