`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2019 05:02:55 PM
// Design Name: 
// Module Name: sumator_16biti
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


module sumator_16biti(
    input[15:0] a, b,
    input cin,
    output[15:0] s, 
    output cout);
    
    wire[3:0] P, G;
    wire C1, C2, C3;
    
    sumator_4biti s1(a[3:0], b[3:0], cin, P[0], G[0], s[3:0]);
    assign C1 = G[0] | (P[0] & cin);
    
    sumator_4biti s2(a[7:4], b[7:4], C1, P[1], G[1], s[7:4]);
    assign C2 = G[1] | (P[1] & C1);
    
    sumator_4biti s3(a[11:8], b[11:8], C2, P[2], G[2], s[11:8]);
    assign C3 = G[2] | (P[2] & C2);
    
    sumator_4biti s4(a[15:12], b[15:12], C3, P[3], G[3], s[15:12]);
    assign cout = G[3] | (P[3] & C3);
     
endmodule
