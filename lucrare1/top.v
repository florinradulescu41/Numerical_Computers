module top(input reset, pauza, clk_in, output [7:0]An, [6:0]Seg, DP);

wire [3:0]BCD0;
wire [3:0]BCD1;
wire [3:0]BCD2;
wire [3:0]BCD3;
wire clk_out_seg;
wire clk_out_led;
wire carry_out1;
wire carry_out2;
wire [5:0]valoare_bin1;
wire [5:0]valoare_bin2;

numarator n1(
             input clk_out_led, reset, pauza
             output carry_out1, [5:0]valoare_bin1
             );

bin2bcd b1(
           input [5:0]valoare_bin1,
           output [3:0]BCD0, BCD1
           );

numarator n2(
             input carry_out1, reset, pauza
             #carry_out1 joaca rol de clk_out_led
             output carry_out2, [5:0]valoare_bin2
             );

bin2bcd b2(
           input [5:0]valoare_bin2,
           output [3:0]BCD2, BCD3
           );

divizor d1(
           input clk_in, reset,
           output clk_out_led, clk_out_seg
           );

afisare7seg s1(
               input clk_out_seg, reset,
               input [3:0]BCD0, BCD1, BCD2, BCD3,
               output reg [7:0]An,
               output reg [6:0]Seg,
               output reg DP
               );

endmodule
