`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2019 01:45:49 PM
// Design Name: 
// Module Name: numarator
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

module numarator(
    input clk_out_led, reset, pauza,
    output[5:0] valoare_bin,
    output carry_out
    );
    
    reg carry_out;
    reg[5:0] valoare_bin;
    
    always @ (posedge clk_out_led)
        begin
            if (!reset)
                begin
                    valoare_bin = 0;
                    carry_out = 0;
                end
            else
            begin
                if (!pauza)
                    begin
                        valoare_bin = valoare_bin + 1;
                        carry_out = 0;
                        
                        if (valoare_bin > 59)
                            begin
                                valoare_bin = 0;
                                carry_out = 1;
                            end
                    end
            end
        end
        
endmodule