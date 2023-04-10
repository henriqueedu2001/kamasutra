module E_factor (Y, E);
	input [7:0] Y;
	output [4:0] E;
	
	wire [3:0] Yhigh;
	wire [3:0] Ylow;

	higher Higher_Y (Y, Yhigh);
	lower Lower_Y (Y, Ylow);

    assign E = Yhigh + Ylow;

endmodule
