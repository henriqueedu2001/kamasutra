`timescale 1ns/1ps

module D_test;
	reg [7:0] X;
	wire [4:0] D;
	
	D_factor uut (
		.X(X),
        .D(D)
	);
	
	initial begin
        X = 8'b01100101;
        $monitor (D);
        #100;
    end
	
endmodule
