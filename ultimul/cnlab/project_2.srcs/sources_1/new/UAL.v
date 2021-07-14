`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2019 06:53:26 PM
// Design Name: 
// Module Name: UAL
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


module UAL(
    input a,
    input b,
    input [1:0]op,
    output out
    );
    reg out;
    
    always @(op)
    case(op)
    2'b00 : out = a^b;
    2'b01 : out = a&b;
    2'b10 : out = a|b;
    2'b11 : out = ~a;
    default : out = a;
    endcase
    endmodule
