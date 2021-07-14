`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2019 07:14:02 PM
// Design Name: 
// Module Name: sim1
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


module sim1(
    );
    reg a, b; 
    reg [1:0]op;
    wire out;
    UAL u1(a, b, op, out);
    
    initial begin
    a=1'bx; b=1'bx; op=2'bxx;
    #10 a=1; b=0; op=10;
    #30 $display("Pentru valorile a=[%d], b=[%d], op=[%d] iesirea este [%d]", a, b, op, out);
    #10 a=0; b=1; op=11;
    #10 a=1'bx; b=1'bx; op=2'bxx;
    #10$stop;
    #10$finish;
    end
    
    
endmodule
