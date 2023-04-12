`timescale 1ns/1ps

/* módulo de teste para a rom */
module test_MULT_SIGNAL;
	reg X_signal; 
    reg Y_signal; 
    wire Mult_signal;
	
	// instância da Unit Under Test
	MULT_SIGNAL uut(
		.X_signal(X_signal),
		.Y_signal(Y_signal),
        .Mult_signal(Mult_signal)
	);
	
	// testa os produtos X*Y para diversos valores de X e Y
	initial begin
		X_signal = 1'b0;
        Y_signal = 1'b0;
		$monitor ("sinal de X = %B; sinal de Y = %B; sinal de X*Y = %B", X_signal, Y_signal, Mult_signal);
		#100;

        X_signal = 1'b1;
        Y_signal = 1'b0;
		$monitor ("sinal de X = %B; sinal de Y = %B; sinal de X*Y = %B", X_signal, Y_signal, Mult_signal);
		#100;

        X_signal = 1'b0;
        Y_signal = 1'b1;
		$monitor ("sinal de X = %B; sinal de Y = %B; sinal de X*Y = %B", X_signal, Y_signal, Mult_signal);
		#100;

        X_signal = 1'b1;
        Y_signal = 1'b1;
		$monitor ("sinal de X = %B; sinal de Y = %B; sinal de X*Y = %B", X_signal, Y_signal, Mult_signal);
		#100;
	end
endmodule