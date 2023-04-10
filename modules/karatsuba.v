/* módulo karatsuba
   recebe inteiros X e Y (8 bits) e retorna o produto Z = X*Y (16 bits)
*/
module karatsuba(X, Y, Z);
    input [7:0] X; // fator X da multiplicação (8 bits)
    input [7:0] Y; // fator X da multiplicação (8 bits)
    output [15:0] Z; // produto Z (16 bits)
    
    wire [9:0] A; // fator A do karatsuba
    wire [9:0] B; // fator B do karatsuba
    wire [4:0] D; // fator D do karatsuba
    wire [4:0] E; // fator E do karatsuba

    wire [9:0] DE; // produto D*E (10 bits)
    
    // atribuição dos valores aos fios de A, B, D e E
    A_factor A_fac (X, Y, A);
    B_factor B_fac (X, Y, B);
    D_factor D_fac (X, D);
    E_factor E_fac (Y, E);
    
    ROM DE_prod ({D, E}, DE);

    //assign Z = { 6'b000000, A};
    //assign Z = {B[7:0], 8'b00000000};
    //assign Z = { 6'b000000, A} + {B[7:0], 8'b00000000};
    //assign Z = { 6'b000000, DE};
    //assign Z = {6'b000000, DE - (A+B)};
    assign Z = { 6'b000000, A} + {B[7:0], 8'b00000000} + {6'b000000, DE - (A+B)};

endmodule
