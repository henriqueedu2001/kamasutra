/* Somador em complemento de 2
   Recebe dois números para a operação
   e uma variável sub para indicar se deve ser
   realizada uma soma ou uma subtração
*/
module twos_complement_adder(
    input  [15:0] a,
    input  [15:0] b,
    input sub, // ativador da subtração
    output reg [15:0] sum
);

wire [15:0] b_comp;
assign b_comp = ~b + 1; // Pega o negativo de b para a subtração

always@ (sub)
begin
	if(sub == 1'b1) sum = a + b_comp; // se a subtração estiver ativada, somar com o oposto de b
	else sum = a + b;
end


endmodule

