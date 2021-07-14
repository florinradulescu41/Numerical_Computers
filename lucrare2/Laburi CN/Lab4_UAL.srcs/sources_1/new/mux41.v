`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2019 04:41:54 PM
// Design Name: 
// Module Name: mux41
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux41(sel, a, b, outf);

input[1:0] sel;
input[0:0] a;
input[0:0] b;
output[0:0] outf;

reg outf;
wire[1:0] sel;

always @(sel)
begin
   case(sel)
       0 : outf = a^b;
       1 : outf = a&b;
       2 : outf = a|b;
       3 : outf = ~a;
   endcase
end

endmodule
