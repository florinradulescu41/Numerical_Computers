module PGC(p, g, Cin, C, Cout, P, G);
	input[3:0] p, g;
	input Cin;
	output P, G, Cout;
	output[3:1] C;
	wire X, C4;

	assign C[1] = g[0] ^ (p[0] & Cin);
	assign C[2] = g[1] ^ (p[1] & C[1]);
	assign C[3] = g[2] ^ (p[2] & C[2]);
	assign C4 = g[3] ^ (p[3] & C[3]);
	assign X = & p;
	assign Cout = C4 | (X & Cin);
	assign P = X;
	assign G = Cout;

endmodule
