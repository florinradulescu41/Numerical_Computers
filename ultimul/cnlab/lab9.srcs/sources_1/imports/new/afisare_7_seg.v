`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2019 06:50:15 PM
// Design Name: 
// Module Name: show_7seg
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


module afisare_7_seg(
    input clk_out_seg, reset,
    input [3:0]BCD1, BCD2,
    output reg [7:0]An,
    output reg [6:0]Seg
    );
    
    reg [3:0]BCD;
    reg [1:0]S;
    
always @(posedge clk_out_seg)
begin
    if (!reset)
        S = 2'b00;
        
    An[7:4] = 4'b1111;
    
    case(S)
        2'b01: {BCD, An[3:0]} = {BCD2, 4'b1011};
        2'b10: {BCD, An[3:0]} = {BCD1, 4'b1101};
    endcase
    
    S = S + 1;
    
    case(BCD)
        4'b0000 : Seg = 7'b0000001; //0
        4'b0001 : Seg = 7'b1001111; //1
        4'b0010 : Seg = 7'b0010010; //2
        4'b0011 : Seg = 7'b0000110; //3
        4'b0100 : Seg = 7'b1101100; //4
        4'b0101 : Seg = 7'b0100100; //5
        4'b0110 : Seg = 7'b0100000; //6
        4'b0111 : Seg = 7'b0001111; //7
        4'b1000 : Seg = 7'b0000000; //8
        4'b1001 : Seg = 7'b0001100; //9
    endcase
end 
endmodule
