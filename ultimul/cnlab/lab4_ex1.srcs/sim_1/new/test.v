`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2019 05:20:06 PM
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
    
    reg clk_out_led, reset, pauza;
    wire[5:0] valoare_bin;
    wire carry_out;
    
    numarator_59 nr(clk_out_led,reset,pauza,valoare_bin,carry_out);
      
    initial begin
         #50 reset = 1; pauza = 0;
         #50 reset = 0;
         #50 $display("secunde = %d si minute = %d", valoare_bin, carry_out); 
    end
    
    always
        #50 clk_out_led = ~clk_out_led;
endmodule
