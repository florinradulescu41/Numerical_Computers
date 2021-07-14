module sumator16(a, b, cin, sum, cout);
	input[15:0] a, b;
	input cin;
	output[15:0] sum;
	output cout;

	wire[15:0] p,g;
	wire[3:1] c;
	
	sumator4 sum0(a[3:0], b[3:0], cin, sum[3:0], c[1], p[3:0], g[3:0]);
	sumator4 sum1(a[7:4], b[7:4], c[1], sum[7:4], c[2], p[7:4], g[7:4]);
	sumator4 sum2(a[11:8], b[11:8], c[2], sum[11:8], c[3], p[11:8], g[11:8]);
	sumator4 sum3(a[15:11], b[15:11], c[3], sum[15:11], cout, p[15:11], g[15:11]);

endmodule;
