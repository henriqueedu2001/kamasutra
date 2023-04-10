`timescale 1ns/1ps

module test_rom;
	reg [7:0] factors;
	wire [7:0] product;
	
	ROM uut(
		.addr(factors),
		.data(product)
	);
	
	initial begin
		factors = 8'b00010001;
		$monitor (product);
		#100;

		factors = 8'b00110011;
		$monitor (product);
		#100;

		factors = 8'b10011001;
		$monitor (product);
		#100;
	end
endmodule
