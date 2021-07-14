
module top(); NU
    reg clk, reset, load;
    reg [47:0] mans;
    reg [15:0] exps;
    wire [23:0] result_man;
    wire [7:0] result_exp;
    reg[23:0] man1;
    reg[23:0] man2;
    reg[7:0] exp1;
    reg[7:0] exp2;
    
    always #20 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        load = 1;
        exp1 = 8'b01111100;
        man1 = 24'b011010111000010100011110;
        exp2 = 8'b01111011;
        man2 = 24'b000011001100110011001101;    
        result_exp = {exp1, exp2};
        result_man = {man1, man2};
        op = 0;
    end
endmodule
