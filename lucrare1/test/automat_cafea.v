module automat_cafea(clk, reset, B1leu, B5lei, cafea, rest);

  input clk, reset, B1leu, B5lei;
  output cafea, rest;
  reg cafea, rest;
  reg [2:0] state, nxt;

  always @(posedge clk)
    if(reset)
      state <= 0;
    else
      state <= nxt;

  always @(state or B1leu or B5lei)
    case({state, B1leu, B5lei})
    5'b 00010: begin nxt = 3'b 001; cafea = 0; rest = 0; end
    5'b 00001: begin nxt = 3'b 010; cafea = 1; rest = 0; end
    5'b 00110: begin nxt = 3'b 010; cafea = 0; rest = 0; end
    5'b 00100: begin nxt = 3'b 000; cafea = 0; rest = 1; end
    5'b 01000: begin nxt = 3'b 001; cafea = 0; rest = 1; end
    5'b 01010: begin nxt = 3'b 000; cafea = 1; rest = 0; end
    default begin nxt = 3'b 000; cafea = 0; rest = 0; end
    endcase

endmodule
