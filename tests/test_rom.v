`timescale 1ns/1ps

module test_rom;
	reg [9:0] factors;
	wire [9:0] product;
	
	ROM uut(
		.addr(factors),
		.data(product)
	);
	
	initial begin
		factors = 10'b0000100001;
		$monitor (product);
		#100;

		factors = 10'b0001100011;
		$monitor (product);
		#100;

		factors = 10'b0100101001;
		$monitor (product);
		#100;
	end
endmodule
