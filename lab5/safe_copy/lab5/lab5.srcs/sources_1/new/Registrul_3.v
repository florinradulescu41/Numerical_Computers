`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Registrul_3
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


module Registrul_3(
    input clk,
    input clr,
    input ld,
    input [23:0] exp,
    output reg [23:0] out
    );
    
    always @ (posedge clk)
    begin
        if (ld == 1) begin
            out = exp;
        end
        if (clr == 1) begin
            out = 0;
        end
    end
endmodule
