
module ManAlign(input [56:0] val, output [47:0] result);

	reg [7:0] shifts;
	reg signed [22:0] man1;
	reg sign1;
	reg signed [22:0] man2;
	reg sign2;

	always @ (val) begin
		shifts = val[55:48];
		sign1 = val[47];
		man1 = val[46:24];
		sign2 = val[23];
		man2 = val[22:0];

	if (val[56] == 1) begin
		man2 = man2 >>> shifts;
		end
	else begin
		man1 = man1 >>> shifts;
		end	
	result = {sign1, man1, sign2, man2};
	end

endmodule
