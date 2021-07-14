`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2019 04:27:22 PM
// Design Name: 
// Module Name: sumator_4biti
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


module sumator_4biti(
    input[3:0] a, b, 
    input cin,
    output P, G,
    output[3:0] s);
    
    wire [3:0] g, p;
    wire c1, c2, c3, c4;
     
    assign g = a & b;
    assign p = a | b;
    
    assign c1 = g[0] | (cin & p[0]);
    assign c2 = g[1] | (c1 & p[1]);
    assign c3 = g[2] | (c2 & p[2]);   
    
    assign P = p[3] & p[2] & p[1] & p[0];
    assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]); 
    
    assign s[0] = a[0] ^ b[0] ^ cin;
    assign s[1] = a[1] ^ b[1] ^ c1;
    assign s[2] = a[2] ^ b[2] ^ c2;
    assign s[3] = a[3] ^ b[3] ^ c3;

    
endmodule
