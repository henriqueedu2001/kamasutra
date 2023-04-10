`timescale 1ns/1ps

module B_test;
	reg [7:0] X;
    reg [7:0] Y;
	wire [9:0] B;
	
	B_factor uut (
		.X(X),
		.Y(Y),
        .B(B)
	);
	
	initial begin
        X = 8'b01100101;
        Y = 8'b01100101;
        $monitor (B);
        #100;
    end
	
endmodule
