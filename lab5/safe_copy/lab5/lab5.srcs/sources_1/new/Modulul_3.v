`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Modulul_3
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


module Modulul_3(
    input [7:0] exponent,
    input [8:0] valoarea2,
    output reg [7:0] exponent_bun
    );
    
    reg [7:0] diferenta;
    
    always @ (exponent or valoarea2) begin
        exponent_bun = exponent;
        diferenta = valoarea2[7:0];
        $display("modul 3 val2: %b, dif: %b", valoarea2, diferenta);
        $display("modul 3 exponent %b", exponent);
        if (valoarea2[8] == 0) begin // daca trb sa adunam 1 la exponent
            $display("adunam 1 la exponent");
            exponent_bun = exponent_bun + 1;
        end
        else begin
            $display("scadem %b la exp", diferenta);
            exponent_bun = exponent_bun - diferenta;
        end
        $display("modul 3 exponent bun %b", exponent_bun);
    end
    
    
endmodule
