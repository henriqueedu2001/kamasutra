module karatsuba(X, Y, Z);
    input [7:0] X;
    input [7:0] Y;
    output [15:0] Z;

    reg [7:0] A;
    reg [7:0] B;
    reg [4:0] D;
    reg [4:0] E;

    A_factor A_fac (X, Y, A);
    B_factor B_fac (X, Y, B);
    D_factor D_fac (X, D);
    E_factor E_fac (Y, E);

    

endmodule
