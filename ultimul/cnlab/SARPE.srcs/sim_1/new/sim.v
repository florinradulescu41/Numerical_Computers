`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2019 12:21:37 PM
// Design Name: 
// Module Name: sim
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


module sim();
    reg clk_out_led;
    reg reset;
    reg pauza;
    wire [5:0] valoare_bin;
    wire carry_out;
    
    numarator n1(clk_out_led, reset, pauza, valoare_bin, carry_out); 

    
    initial begin
        clk_out_led = 0; reset = 0; pauza = 0;
        #100 reset = 1;  
    end 
    
    always 
    #50 clk_out_led = !clk_out_led;
    
 
        
        
endmodule
