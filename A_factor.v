module A_factor (X, Y, A);
	input [7:0] X;
	input [7:0] Y;
	output [9:0] A;
	
	wire [3:0] Xlow;
	wire [3:0] Ylow;

	lower Lower_X (X, Xlow);
	lower Lower_Y (Y, Ylow);
	ROM rom ({1'b0, Xlow, 1'b0, Ylow}, A);

endmodule
