`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2019 04:52:00 PM
// Design Name: 
// Module Name: test_adder
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


module test_adder();
    reg a, b, cin;
    wire cout, sum;
    reg [0*100:1] olinie;
    integer fd, count, status, i_a, i_b, i_cin, i_cout, i_sum, erori;
    
    adder add1(a, b, cin, cout, sum);
    
    initial begin
        a = 1'bx; b = 1'bx; cin = 1'bx;
        fd = $fopen("C:/Users/student/Desktop/input.txt", "r");
        if (fd == 0)
            fd = $fopen("C:/Users/student/Desktop/input.txt", "r");
        count = 1;
        #100
        erori = 0;
        while ($fgets(olinie, fd))
        begin
            status = $sscanf(olinie, "%d %d %d %d %d", i_a, i_b, i_cin, i_cout, i_sum);
            a = i_a; b = i_b; cin = i_cin;
            #50
            if (i_cout == cout && i_sum == sum)
                $display("%d(%t) ok, a=%d, b=%d, cin=%d, cout=%d, sum=%d\n", count, $time, a, b, cin, cout, sum);
            else begin
                erori = erori + 1;
                 $display("%d(%t):EROARE, a=%d, b=%d, cin=%d, cout(actual)=%d, cout(corect)=%d, sum(actual)=%d, sum(corect)=%d\n", count, $time, a, b, cin, cout, i_cout, sum, i_sum);
            end
            count = count + 1;
        end
        #10 a=0; b=0; cin=0;
        #10 a=1; b=0; cin=1;
        #10 a=1; b=1; cin=1;
        #10 $stop;
        #10 $finish;                  
    end
endmodule
