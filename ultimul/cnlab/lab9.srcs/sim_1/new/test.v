`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 04:28:34 PM
// Design Name: 
// Module Name: test
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


module test();

    reg[3:0] a, b;
    wire[3:0] BCD1, BCD2;
    
    BCDadder sum(a, b, BCD1, BCD2);
        
    initial begin
        a = 4'b0111; 
        b = 4'b0101;
    end
endmodule
