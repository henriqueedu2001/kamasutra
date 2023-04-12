`timescale 1ns/1ps

/* módulo de teste para a rom */
module test_abs;
	reg [7:0] X;
    wire [7:0] Abs_X;
	
	// instância da Unit Under Test
	ABS uut(
		.X(X),
        .Abs_X(Abs_X)
	);
	
	// 
	initial begin
		X = 8'b00010101;
		$monitor ("X = %B = %D; |X| = %B = %D", X, X, Abs_X, Abs_X);
		#100;

        X = 8'b11111111;
		$monitor ("X = %B = %D; |X| = %B = %D", X, X, Abs_X, Abs_X);
		#100;
	end
endmodule