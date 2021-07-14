`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2019 05:07:30 PM
// Design Name: 
// Module Name: numarator_59
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


module numarator_59(
    input clk_out_led, reset, pauza,
    output [5:0]valoare_bin,
    output carry_out
    );
    
    reg carry_out;
    reg [5:0] valoare_bin;
    
    always @(posedge clk_out_led)
        begin
            if(!reset)
                begin
                    valoare_bin = 6'b000000;
                    carry_out = 0;
                end
                
            if(!pauza)
                begin
                    valoare_bin = valoare_bin + 1;
                    carry_out = 0;   
                    if( valoare_bin > 6'b111100 )
                        begin
                            carry_out = 1;
                            valoare_bin = 6'b00000;
                        end
                end    
        end
    
endmodule
