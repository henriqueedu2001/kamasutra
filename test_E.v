`timescale 1ns/1ps

module E_test;
	reg [7:0] Y;
	wire [4:0] E;
	
	E_factor uut (
		.Y(Y),
        .E(E)
	);
	
	initial begin
        Y = 8'b01100101;
        $monitor (E);
        #100;
    end
	
endmodule
