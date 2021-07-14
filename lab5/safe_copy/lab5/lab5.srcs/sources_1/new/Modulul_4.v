`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Modulul_4
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

// aliniaza mantisele
// input e val1 : mantisa1 : mantisa2
// daca val[8] == 1, atunci mantisa 2 >> val1(fara bitul 8)
module Modulul_4(
    input [56:0] inp,
    output reg [47:0] mantise
    );
    
    reg [7:0] numar_de_shifts;
    reg signed [22:0] mantisa1;
    reg signed [22:0] mantisa2;
    reg semn1;
    reg semn2;
    
    always @ (inp) begin
        numar_de_shifts = inp[55:48];
        
        semn1 = inp[47];
        mantisa1 = inp[46:24];
        mantisa2 = inp[22:0];
        semn2 = inp[23];
        
        if (inp[56] == 1) begin
            $display("shiftam mantisa 2: %b", mantisa2);
            mantisa2 = mantisa2 >>> numar_de_shifts;
            $display("dupa shiftare: %b", mantisa2);
        end
        else begin
            $display("shiftam mantisa 1: %b", mantisa1);
            mantisa1 = mantisa1 >>> numar_de_shifts;
            $display("dupa shiftare: %b", mantisa1);
        end
        mantise = {semn1, mantisa1, semn2, mantisa2};
    
    end
    
endmodule
