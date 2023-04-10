module B_factor (X, Y, B);
	input [7:0] X;
	input [7:0] Y;
	output [7:0] B;
	
	wire [3:0] Xhigh;
	wire [3:0] Yhigh;

	higher Higher_X (X, Xhigh);
	higher Higher_Y (Y, Yhigh);
	ROM rom ({Xhigh, Yhigh}, B);

endmodule
