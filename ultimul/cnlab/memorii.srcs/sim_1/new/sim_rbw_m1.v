`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2019 04:33:09 PM
// Design Name: 
// Module Name: sim_rbw_m1
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


module sim_rbw_m1 #(parameter biti = 32);
    reg clk, we;
    reg [2:0] addr;
    reg [biti-1:0] d_in;
    wire [biti-1:0] d_out;
    integer i;
    
    rbw_m1 #(biti) inst1(clk, we, addr, d_in, d_out);
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 0;
        we = 0;
        d_in = {biti{1'bx}};
        addr = 3'bx;
        
        // scriere
        for (i=0; i<8; i=i+1)
        begin
            @(negedge clk);
            #5 addr=i; we=1; d_in=15-i;
        end
        
        //citire
        @(negedge clk);
        for (i=0; i<8; i=i+1)
        begin
            @(negedge clk);
            #5 addr=i; we=0;
        end
        
        @(negedge clk);
        #5 addr=5; we=1; d_in=99;
        
        @(negedge clk);
        @(negedge clk);
        addr = 3'bx;
        we = 1'bx;
        d_in = {biti{1'bx}};
        
        @(negedge clk);
        $finish;
        
    end
    
endmodule
