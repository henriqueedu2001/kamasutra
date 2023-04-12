/* módulo karatsuba
   recebe inteiros X e Y (8 bits) e retorna o produto Z = X*Y (16 bits)
*/
module karatsuba(X, Y, state, Z);
    input [7:0] X; // fator X da multiplicação (8 bits)
    input [7:0] Y; // fator X da multiplicação (8 bits)
    input [1:0] state; // Estado da FMS
    output [15:0] Z; // produto Z (16 bits)
    
    wire [9:0] A; // fator A do karatsuba
    wire [9:0] B; // fator B do karatsuba
    wire [4:0] D; // fator D do karatsuba
    wire [4:0] E; // fator E do karatsuba

    wire [9:0] DE; // produto D*E (10 bits)
    
    // Parametros de estado
    parameter [2:0] s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
    
    always@(state) begin
    	case(state)
    		s1: A_factor A_fac (X, Y, A); //Computa A e registra em A
    		s2: begin
    		B_factor B_fac (X, Y, B); //Computa B e registra em B
		D_factor D_fac (X, D); // Computa D e registra em D
		E_factor E_fac (Y, E); // Computa E e registra em E
		end
    		s3: ROM DE_prod ({D, E}, DE); // Computa D*E e registra em DE
    		s4: assign Z = { 6'b000000, A} + {B[7:0], 8'b00000000} + {6'b000000, DE - (A+B)}; // Computa o resultado final a partir das parcelas obtidas nos outros estados
    		
	endcase
    end
endmodule
