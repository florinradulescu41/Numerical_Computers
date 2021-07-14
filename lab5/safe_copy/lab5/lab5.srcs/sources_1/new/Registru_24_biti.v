`timescale 1ns / 1ps

module Registru_24_biti(
    input clk,
    input clr,
    input ld,
    input [23:0] inp,
    output reg [23:0] outp
    );
    
    always @ (posedge clk)
    begin
        if (ld == 1) begin
            outp = inp;
        end
        if (clr == 1) begin
            outp = 0;
        end
    end
endmodule
