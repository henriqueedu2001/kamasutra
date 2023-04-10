`timescale 1ns/1ps

module higher_test;
	reg [7:0] number;
	wire [3:0] higher_part;
	
	higher uut (
		.number(number),
		.higher_part(higher_part)
	);
	
	initial begin
		number = 8'b00110000;
		$monitor (higher_part);
		#100;
	end
	
endmodule
