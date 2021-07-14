`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 01:48:53 AM
// Design Name: 
// Module Name: simulare_pt_detoate
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


module simulare_pt_detoate();
    /*reg [47:0] in5;
    reg op;
    reg[23:0] mantisa1;
    reg[23:0] mantisa2;
    wire [25:0] out5;
    wire[23:0] mantisa_norm;
    wire[8:0]val2;*/
    reg clk, reset, load, operatie;
    reg [47:0] mantisele;
    reg [15:0] exponentii;
    wire [23:0] mantisa_out;
    wire [7:0] exponent_out;
    
    reg[23:0] mantisa1;
    reg[23:0] mantisa2;
    reg[7:0] exponent1;
    reg[7:0] exponent2;
    
    /*
    (clk,
    exponent_out,
    exponentii,
    load,
    mantisa_out,
    mantisele,
    operatie,
    reset);
    */
    
    fp_arithmetic_wrapper bd_i(clk, exponent_out, exponentii, load, mantisa_out, mantisele, operatie, reset);
    
    always #20 clk = ~clk;
    
    initial begin
        /*mantisa1 = 24'b100001000000000000000000;
        mantisa2 = 24'b100000101100010000000000;
        in5 = {mantisa1, mantisa2};
        op = 0;*/
        clk = 0;
        reset = 1;
        #10 reset = 0;
        load = 1;
        // nr 1 = 0.23
        exponent1 = 8'b01111100;
        mantisa1 = 24'b011010111000010100011110;
        // nr 2 = 0.1
        exponent2 = 8'b01111011;
        mantisa2 = 24'b000011001100110011001101;
        
        exponentii = {exponent1, exponent2};
        mantisele = {mantisa1, mantisa2};
        operatie = 0;
        
        

    
    end
    

endmodule
