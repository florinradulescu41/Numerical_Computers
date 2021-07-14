module test_automat();

  reg clk, reset, B1leu, B5lei;
  wire cafea, rest;

  automat_bauturi a1(clk, reset, B1leu, B5lei, cafea, rest);

  initial
    begin


    reset = 1;
    #20 reset = 0; clk = 0;
    #20 B1leu = 1; B5lei = 0;
    #20 B1leu = 1; B5lei = 0;
    #20 B1leu = 0; B5lei = 0;
    #20 B1leu = 0; B5lei = 0;
    #20 B1leu = 0; B5lei = 0;
    #20 B1leu = 0; B5lei = 1;
    #20 B1leu = 1; B5lei = 0;
    #20 B1leu = 0; B5lei = 0; 

    end

  always
  #10 clk = !clk;

endmodule
