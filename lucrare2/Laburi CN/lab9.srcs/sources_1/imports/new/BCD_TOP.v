`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2019 03:41:49 PM
// Design Name: 
// Module Name: BCD_TOP
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


module BCD_TOP(
    input clk_in,reset,
    input [3:0]a, b,
    output [7:0]An,
    output [6:0]Seg,
    output clk_out_led
    );
    
    wire [3:0]BCD1, BCD2;
    
   BCDadder bcd(a, b, BCD1, BCD2);
   clockDiv divider(clk_in, reset, clk_out_led, clk_out_seg); 
   afisare_7_seg afisare(clk_out_seg, reset, BCD1, BCD2, An, Seg);
   
endmodule
