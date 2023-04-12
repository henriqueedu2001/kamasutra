# kamasutra
Algortimo Karatsuba, em implementação com verilog para cálculo do produto de dois inteiros positivos X e Y de 8 bits cada.

# Implementação
A expressão do karatsuba é a seguinte:

X*Y = A + (B<<8) + [(D*E) - (A+B)]<<4

Em que:

A = Xlow * Ylow
B = Xhigh * Yhigh
C = Xhigh + Xlow
D = Yhigh + Ylow

Sendo high e low correspondentes aos 4 primeiros e 4 últimos bits do número, do mais significativo para o menos significativo. Por exemplo, se X = 8'b01010011, Xhigh = 4'b0101 e Xlow = 4'b0011.

Nessa implementação, os valores das multiplicações de números de 5 bits são armazenados numa ROM de 2^(5 + 5) = 2^10 = 1024 posições de memória. Dessa forma, os cálculos de A, B e D*E são obtidos quase que instantaneamente pela ROM, sem necessidade de dispender tempo com o cálculo desses produtos. O único gasto de tempo é apenas com a consulta de A, B e D*E, pois não se pode consultar a ROM para três valores distintos ao mesmo tempo; é preciso fazer a consulta sequencialmente.

# Módulos
A: recebe X e Y e devolve o fator A em 10 bits
B: recebe X e Y e devolve o fator B em 10 bits
D: recebe X e devolve o fator D em 5 bits
E: recebe Y e devolve o fator E em 5 bits

# Compilação
```
iverilog -o karatsuba modules/rom.v modules/A_factor.v modules/B_factor.v modules/D_factor.v modules/E_factor.v modules/karatsuba.v tests/test_karatsuba.v
```

# Testbench
```
vvp karatsuba
```
