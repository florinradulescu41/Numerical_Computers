`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2019 06:54:05 PM
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


module test_adder(

    );
    reg a, b, cin;
    wire cout, sum;
    adder ad1(a,b,cin,cout,sum);
    integer fd, status, i_a, i_b, i_cin,i_cout,i_sum;
    reg[8*100:1] line;
    
    initial begin
        
      
        
        fd=$fopen("C:/Users/student/325CC/Lab3.2KN/input.txt", "r");
        while($fgets(line, fd))
        begin
            status = $sscanf(line, "%d %d %d %d %d",i_a, i_b, i_cin, i_cout, i_sum);
            a = i_a; b = i_b; cin = i_cin;
            #10
            if(i_cout == cout && i_sum == sum)
                $display("OK: a=%d b=%d cin=%d", a, b, cin);
            else
                $display("WRONG: a=%d b=%d cin=%d cout = %d(corect: %d) sum = %d(corect: %d)", a, b, cin, i_cout, cout, i_sum, sum);
        end
        
        #10 $stop;
        #10 $finish;
    end
endmodule
