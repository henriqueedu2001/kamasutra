`timescale 1ns/1ps

module A_test;
	reg [7:0] X;
    reg [7:0] Y;
	wire [9:0] A;
	
	A_factor uut (
		.X(X),
		.Y(Y),
        .A(A)
	);
	
	initial begin
        X = 8'b01100101;
        Y = 8'b01100101;
        $monitor (A);
        #100;
    end
	
endmodule
