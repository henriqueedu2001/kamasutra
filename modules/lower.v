module lower (number, lower_part);
	input [7:0] number;
	output [3:0] lower_part;
	
	assign lower_part[0] = number[0];
	assign lower_part[1] = number[1];
	assign lower_part[2] = number[2];
	assign lower_part[3] = number[3];
	
endmodule
