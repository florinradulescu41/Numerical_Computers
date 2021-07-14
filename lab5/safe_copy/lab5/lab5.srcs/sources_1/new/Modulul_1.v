`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2020 12:41:52 AM
// Design Name: 
// Module Name: Modulul_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: compara exponentii prin scadere
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Modulul_1(
    input [15:0] exponenti,
    output reg [8:0] valoarea1,
    output reg [15:0] fw_exp
    );
    
    reg [7:0] exp1;
    reg [7:0] exp2;
    reg signed [7:0] rezultat;
    reg offset;
    
    always @ (exponenti) begin
        $display("modul 1 in: %b\n", exponenti);
        fw_exp = exponenti;
        exp1 = 0;
        exp2 = 0;
        valoarea1 = 0;
        
        //exp1[0] = exponenti[0];
        //exp1[1] = exponenti[1];
        //exp1[2] = exponenti[2];
        //exp1[3] = exponenti[3];
        //exp1[4] = exponenti[4];
        //exp1[5] = exponenti[5];
        //exp1[6] = exponenti[6];
        //exp1[7] = exponenti[7];
        
        exp2 = exponenti[7:0];
        exp1 = exponenti [15:8];
        
        
        //disp(exp2);
        
        rezultat = exp1 - exp2;
        //$display("%b", rezultat);
        // val1[8] == 1 -> exp2 < exp1
        
        valoarea1[7:0] = rezultat; // memoram rezultatul
        
        //$display("%d", valoarea1);
        
        if (rezultat < 0) begin // daca exp2 > exp1
                            // deci daca exp1 trb deplasat
            //valoarea1 = ~valoarea1;
            $display("rezultat negativ");
            valoarea1 = -valoarea1;
            //valoarea1 = valoarea1 + 1;
            valoarea1[8] = 0;
        end
        
        if (rezultat > 0) begin
            valoarea1[8] = 1;
        end
        
        $display("modul 1 valoarea1 %b", valoarea1);
        $display("modul 1 rezultat %b", rezultat);
        //$display("modul 1 offset %b", offset);
    
    //valoarea1 <=  - ;
    
    end
    
endmodule
