`timescale 1ns/1ps

/* módulo de teste para a rom */
module test_karatsuba;
	reg [7:0] X;
    reg [7:0] Y;
	wire [15:0] Z;
	
	// instância da Unit Under Test
	karatsuba uut(
		.X(X),
		.Y(Y),
        .Z(Z)
	);
	
	// testa os produtos X*Y para diversos valores de X e Y
	initial begin
		X = 8'b00010001;
        Y = 8'b00010001;
		$monitor ("X = %D; Y = %D; X*Y = %D", X, Y, Z);
		#100;
	end
endmodule
