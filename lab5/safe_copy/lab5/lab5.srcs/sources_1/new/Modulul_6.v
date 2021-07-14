`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Modulul_6
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


module Modulul_6(
    input [25:0] inp,
    output reg [23:0] mantisa,
    output reg [8:0] valoarea2
    );
    
    reg sign;
    reg carry;
    reg [7:0] shifts;
    reg zero;
    reg [22:0] mantisa_fara_semn;
    
    always @ (inp) begin
        zero = inp[25];
        sign = inp[24];
        carry = inp[23];
        mantisa_fara_semn = inp[22:0];
        
        if (carry == 1) begin
            $display("avem carry\nmantisa initiala: %b", mantisa_fara_semn);
            shifts = 1;
            mantisa_fara_semn = mantisa_fara_semn >>> 1;
            //mantisa[23] = 1;
            $display("mantisa dupa: %b", mantisa_fara_semn);
            valoarea2 = 9'b000000001;
        end
        else begin
            if (zero == 0) begin // daca nu e 0
                shifts = 0;
                while (mantisa_fara_semn[22] == 0) begin
                    mantisa_fara_semn = mantisa_fara_semn << 1;
                    shifts = shifts + 1;
                    $display("msb mantisa: %b, shifts: %b", mantisa_fara_semn[22], shifts);
                end
                //for
                $display("shifts: %b, val2: %b", shifts, valoarea2);
                valoarea2 = {1'b1, shifts};
                
            
            end
        end
        mantisa = {sign, mantisa_fara_semn};
        $display("mantisa finala modul 6: %b", mantisa);
    
    end
endmodule
