`timescale 1ns/1ps

module lower_test;
	reg [7:0] number;
	wire [3:0] lower_part;
	
	lower uut (
		.number(number),
		.lower_part(lower_part)
	);
	
	initial begin
		number = 8'b00001111;
		$monitor (lower_part);
		#100;
	end
	
endmodule
