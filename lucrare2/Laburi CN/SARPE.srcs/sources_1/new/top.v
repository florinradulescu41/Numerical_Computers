`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2019 01:23:41 PM
// Design Name: 
// Module Name: top
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


module top(
    input reset, pauza, clk_in,
    output clk_out_led,
    output [7:0]An_0,
    output [6:0]Seg_0,
    output DP_0
    );
    
    wire clk_out_seg;
    wire [5:0] valoare_bin;
    wire carry_out;
    wire carry_out2;
    wire [5:0] valoare_bin2;
    wire [3:0] BCD0;
    wire [3:0] BCD1;
    wire [3:0] BCD2;
    wire [3:0] BCD3;

    
    

    
    divizor_ceas d1(clk_in, reset, clk_out_led, clk_out_seg);
    numarator n1(clk_out_led, reset, pauza, valoare_bin, carry_out);
    numarator n2(carry_out, reset, pauza, valoare_bin2, carry_out2);
    
    bin2cbd b1(valoare_bin, BCD0[3:0], BCD1[3:0]);
    bin2cbd b2(valoare_bin2, BCD2[3:0], BCD3[3:0]);
    
    afisare_7seg clk1(clk_out_seg, reset, BCD0, BCD1, BCD2, BCD3, An_0, Seg_0, DP_0);
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
