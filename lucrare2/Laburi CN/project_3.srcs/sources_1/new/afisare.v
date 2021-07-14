`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2019 07:34:10 PM
// Design Name: 
// Module Name: afisare
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


module afisare(
    input clk_out_seg, reset,
    input [3:0] BCD0, BCD1, BCD2, BCD3,
    output reg [7:0] An,
    output reg [6:0] Seg,
    output reg DP
    );
    
    reg [3:0] BCD;
    reg [1:0] S;
    
    always@(posedge clk_out_seg)
    begin
        if(!reset)
            S = 2'b00;
            
        An[7:4] = 4'b1111;
        
        case(S)
            2'b00:{BCD, An[3:0]} = {BCD0, 4'b0111};
            2'b01:{BCD, An[3:0]} = {BCD1, 4'b1011};
            2'b10:{BCD, An[3:0]} = {BCD2, 4'b1101};
            2'b11:{BCD, An[3:0]} = {BCD3, 4'b1110};
        endcase
        
        S = S + 1;
        
        case (BCD)
            4'b0000 : Seg = 7'b0001001;
            4'b0001 : Seg = 7'b0001001;
            4'b0010 : Seg = 7'b0001001;
            4'b0011 : Seg = 7'b0001001;
            default : Seg = 7'b1111111;
        endcase
        
        if(S == 2'b10)
            DP = 0;
        else
            DP = 1;
     end
    
endmodule

