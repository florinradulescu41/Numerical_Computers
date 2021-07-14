`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Modulul_5
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


module Modulul_5(
    input [47:0] mantise,
    input op,
    output reg [25:0] outp
    );
    
    reg [22:0] mantisa1;
    reg [22:0] mantisa2;
    reg [23:0] result;
    reg semn1;
    reg semn2;
    reg of;
    reg sign;
    reg zero;
    reg [1:0] real_operation;
    
    always @ (op or mantise) begin
        of = 0;
        zero = 0;
        semn1 = mantise[47];
        mantisa1 = mantise[46:24];
        semn2 = mantise[23];
        mantisa2 = mantise[22:0];
        
        /*if (semn1 == 1) begin
            mantisa1 = -mantisa1;
            mantisa1[23] = 1;
        end
            
        if (semn2 == 1) begin
            mantisa2 = -mantisa2;
            mantisa2[23] = 1;
        end*/

        
        if (op == 1)
            semn2 = ~semn2;
        // real op -> 0 (1 + 2), 1 (1 - 2), 2 (2 - 1), 3 (-1 -2)
        if (semn1 == 1)
            if (semn2 == 1) begin
                sign = 1;
                real_operation = 3;
            end
            else begin
                if (mantisa1 > mantisa2)
                    sign = 1;
                else
                    sign = 0;
                    
                real_operation = 2;
            end
        else
            if (semn2 == 0) begin
                sign = 0;
                real_operation = 0;
            end
            else begin
                if (mantisa2 > mantisa1)
                    sign = 1;
                else
                    sign = 0;
                    
                real_operation = 1;
            end
            
            
        if (real_operation == 0) begin
            $display("m1 + m2 %b %b", mantisa1, mantisa2);
            result = mantisa1 + mantisa2;
            //sign = 0;
            $display("rezultat: %b", result);
        end
        if (real_operation == 1) begin
            $display("m1 - m2 %b %b", mantisa1, mantisa2);
            result = mantisa1 - mantisa2;
            //if (mantisa1 < mantisa2)
                //sign = 1;
                
            //semn2 = ~semn2;
            $display("rezultat: %b", result);
        end
        
        if (real_operation == 2) begin
            $display("m2 - m1 %b %b", mantisa1, mantisa2);
            result = mantisa2 - mantisa1;
            $display("rezultat: %b", result);
        end
        
        if (real_operation == 3) begin
            $display("- m1 - m2 %b %b", mantisa1, mantisa2);
            result = mantisa1 + mantisa2;
            result = -result;
            $display("rezultat: %b", result);
        end
        
        
        
        if (result[23] == 1) begin
            $display("avem overflow");
            //of = 1;
        end
        
        //sign = result[24];
        if (result == 0)
            zero = 1;
            
        //outp = {of, sign, result};
        outp = {zero, sign, result};
        
        $display("rezultat modul 5: %b", outp);
    
    end
    
endmodule
