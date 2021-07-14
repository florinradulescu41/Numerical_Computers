`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 04:02:20 AM
// Design Name: 
// Module Name: Modulul_7
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

// concateneaza mantisele cu val1
module Modulul_7(
    input [47:0] mantise,
    input [8:0] val1,
    output reg [56:0] outp
    );
    
    always @ (mantise or val1)
        outp = {val1, mantise};
endmodule
