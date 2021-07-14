`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2019 04:41:56 PM
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

    reg[15:0] a, b;
    reg cin;
    wire[15:0] s;
    wire cout;
    
    sumator_16biti sum(a, b, cin, s, cout);
        
    initial begin
        cin = 0; a = 16'b1000000000000011; b = 16'b1000000000000010;
    end
endmodule
