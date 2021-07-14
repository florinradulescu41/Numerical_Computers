`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2020 01:37:13 AM
// Design Name: 
// Module Name: sum_4
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


module sum_4(in1, in2, cin, G, P, sum);

    input [3:0]in1, in2;
    input cin;
    // generare transport si propagare transport
    output G, P;
    output [3:0]sum;
    
    wire g0, g1, g2, g3;
    wire p0, p1, p2, p3;
    wire c0, c1, c2, c3;
    
    assign g0 = in1[0] & in2[0];
    assign g1 = in1[1] & in2[1];
    assign g2 = in1[2] & in2[2];
    assign g3 = in1[3] & in2[3];
    
    assign p0 = in1[0] | in2[0];
    assign p1 = in1[1] | in2[1];
    assign p2 = in1[2] | in2[2];
    assign p3 = in1[3] | in2[3];
    
    assign G = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0);
    assign P = p3 & p2 & p1 & p0;
    
    assign c0 = cin;
    assign c1 = g0 | (p0 & cin);
    assign c2 = g1 | (p1 & g0) | (p1 & p0 & cin);
    assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin);
    
    assign sum[0] = in1[0] ^ in2[0] ^ c0;
    assign sum[1] = in1[1] ^ in2[1] ^ c1;
    assign sum[2] = in1[2] ^ in2[2] ^ c2;
    assign sum[3] = in1[3] ^ in2[3] ^ c3;

endmodule
