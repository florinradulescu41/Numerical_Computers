module test_automat();

  reg clk, reset, B1, B2, B3;
  wire ESB, EB1, EB2;

  automat_bauturi a1(clk, reset, B1, B2, B3, ESB, EB1, EB2);

  initial
    begin

    reset = 1;
    #20 reset = 0; clk = 0;
    #20 B1 = 1; B2 = 0; B3 = 0;
    #20 B1 = 0; B2 = 0; B3 = 0;
    #20 B1 = 0; B2 = 1; B3 = 0;
    #20 B1 = 0; B2 = 0; B3 = 0;
    #20 B1 = 0; B2 = 0; B3 = 0;
    #20 B1 = 0; B2 = 0; B3 = 1;
    #20 B1 = 0; B2 = 0; B3 = 0;
    #20 B1 = 1; B2 = 0; B3 = 0;
    #20 B1 = 1; B2 = 0; B3 = 0;

    end

  always
  #10 clk = !clk;

endmodule
