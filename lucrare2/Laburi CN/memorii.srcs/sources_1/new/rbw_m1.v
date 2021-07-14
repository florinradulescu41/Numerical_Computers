`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2019 04:28:26 PM
// Design Name: 
// Module Name: rbw_m1
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


module rbw_m1 #(parameter biti = 32) (
    input clk, we,
    input [2:0] addr,
    input [biti-1:0] d_in,
    output [biti-1:0] d_out
    );
    
    reg [biti-1:0] ram_vec[7:0];
    reg [2:0] read_addr;
    reg [biti-1:0] aux;
    
    always @(posedge clk)
    begin
        aux <= ram_vec[addr];
        if(we)
            ram_vec[addr] <= d_in;
    end

    assign d_out = aux;
endmodule
