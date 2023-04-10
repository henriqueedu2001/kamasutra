module D_factor (X, D);
	input [7:0] X;
	output [4:0] D;
	
	wire [3:0] Xhigh;
	wire [3:0] Xlow;

	higher Higher_X (X, Xhigh);
	lower Lower_X (X, Xlow);

    assign D = Xhigh + Xlow;

endmodule
