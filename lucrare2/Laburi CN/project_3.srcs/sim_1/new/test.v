`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2019 06:28:24 PM
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

    reg [5:0]in;
    wire [3:0] BCD0,BCD1;
    
    abc bcd (in, BCD0,BCD1);
    
    initial begin
        in = 6'b011011;
    end
    
   

endmodule
