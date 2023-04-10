module higher (number, higher_part);
	input [7:0] number;
	output [3:0] higher_part;
	
	assign higher_part[0] = number[4];
	assign higher_part[1] = number[5];
	assign higher_part[2] = number[6];
	assign higher_part[3] = number[7];
	
endmodule
