module automat_bauturi(clk, reset, B1, B2, B3, ESB, EB1, EB2);

  input clk, reset, B1, B2, B3;
  output ESB, EB1, EB2;
  reg ESB, EB1, EB2;
  reg [2:0] state, nxt;

  always @(posedge clk)
    if(reset)
      state <= 0;
    else
      state <= nxt;

  always @(state or B1 or B2 or B3)
    case({state, B1, B2, B3})
    6'b 000100: begin nxt = 3'b 001; ESB = 0; EB1 = 0; EB2 = 0; end
    6'b 000010: begin nxt = 3'b 011; ESB = 0; EB1 = 0; EB2 = 0; end
    6'b 000001: begin nxt = 3'b 100; ESB = 0; EB1 = 0; EB2 = 0; end
    6'b 001100: begin nxt = 3'b 010; ESB = 0; EB1 = 0; EB2 = 0; end
    6'b 001000: begin nxt = 3'b 000; ESB = 0; EB1 = 1; EB2 = 0; end
    6'b 010000: begin nxt = 3'b 001; ESB = 0; EB1 = 1; EB2 = 0; end
    6'b 010100: begin nxt = 3'b 000; ESB = 1; EB1 = 0; EB2 = 0; end
    6'b 011000: begin nxt = 3'b 001; ESB = 1; EB1 = 1; EB2 = 0; end
    6'b 100000: begin nxt = 3'b 001; ESB = 1; EB1 = 1; EB2 = 1; end
    default begin nxt = 3'b 000; ESB = 0; EB1 = 0; EB2 = 0; end
    endcase

endmodule
