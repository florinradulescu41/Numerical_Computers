`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 04:14:45 PM
// Design Name: 
// Module Name: BCDadder
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


module BCDadder(
    input [3:0] a, b,
    output reg [3:0] BCD1, BCD2
    );
    
    reg [7:0]sum;
    
    always @ ( * )
    begin
        sum = a + b;
        if (sum > 9)
            sum = sum + 6;
        BCD1 = sum[7:4];
        BCD2 = sum[3:0];
    end
endmodule
