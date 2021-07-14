`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Modulul_2
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


module Modulul_2(
    input [15:0] exponenti,
    output reg [7:0] exp_ales
    );
    
    reg [7:0] exp1;
    reg [7:0] exp2;
    
    always @ (exponenti) begin
    
        exp2 = exponenti[7:0];
        exp1 = exponenti [15:8];
    
        if (exp1 > exp2)
            exp_ales = exp1;
        else
            exp_ales = exp2;
    end
    
endmodule
