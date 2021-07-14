`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2019 05:00:09 PM
// Design Name: 
// Module Name: double_port_ram
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


module double_port_ram #(parameter biti = 32) (
    input clk, we_a, we_b,
    input [2:0] addr_a,
    input [2:0] addr_b,
    input [biti-1:0] d_in_a,
    input [biti-1:0] d_in_b,
    output [biti-1:0] d_out_a,
    output [biti-1:0] d_out_b
    );
    
    reg [biti-1:0] ram_vec[7:0];
    reg [biti-1:0] aux_a;
    reg [biti-1:0] aux_b;
    
    always @(posedge clk)
    begin
        aux_a <= ram_vec[addr_a];
        if(we_a)
            ram_vec[addr_a] <= d_in_a;
    end
    
    always @(posedge clk)
    begin
        aux_b <= ram_vec[addr_b];
        if(we_b)
            ram_vec[addr_b] <= d_in_b;
    end
    
    assign d_out_a = aux_a;
    assign d_out_b = aux_b;
endmodule
