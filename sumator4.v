module sumator4(a, b, cin, sum, cout, P, G);
	input [3:0] a, b;
	input cin;
	output[3:0] sum;
	output cout, P, G;
	wire[3:0] p, g;
	wire[3:1] c;

	PGC sum0(p, g, cin, c, cout, P, G);
	
	sumator sum1(a[0], b[0], cin, sum[0], p[0], g[0]);
	sumator sum2(a[1], b[1], c[1], sum[1], p[1], g[1]);
	sumator sum3(a[2], b[2], c[2], sum[2], p[2], g[2]);
	sumator sum4(a[3], b[3], c[3], sum[3], p[3], g[3]);

endmodule
	
