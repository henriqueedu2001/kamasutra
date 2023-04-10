module B_factor (X, Y, B);
	input [7:0] X;
	input [7:0] Y;
	output [9:0] B;
	
	wire [3:0] Xhigh;
	wire [3:0] Yhigh;

	higher Higher_X (X, Xhigh);
	higher Higher_Y (Y, Yhigh);
	ROM rom ({1'b0, Xhigh, 1'b0, Yhigh}, B);

endmodule
