`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2020 01:46:17 AM
// Design Name: 
// Module Name: sum_16
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


module sum_16(in1, in2, cin, sum, cout);
    input [15:0]in1;
    input [15:0]in2;
    input cin;
    
    output [15:0]sum;
    output cout;
    
    wire G0, G1, G2, G3;
    wire P0, P1, P2, P3;
    wire C0, C1, C2;

    sum_4 sumator1 (in1[3:0], in2[3:0], cin, G0, P0, sum[3:0]);
    assign C0 = G0 | (P0 & cin);
    
    sum_4 ssumator2 (in1[7:4], in2[7:4], C0, G1, P1, sum[7:4]);
    assign C1 = G1 | (P1 & G0) | (P1 & P0 & cin);
    
    sum_4 ssumator3 (in1[11:8], in2[11:8], C1, G2, P2, sum[11:8]);
    assign C2 = G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & cin);
    
    sum_4 ssumator4 (in1[15:12], in2[15:12], C2, G3, P3, sum[15:12]);
    assign cout = G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & cin);
    
endmodule
