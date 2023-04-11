# kamasutra
karatsuba algorithm

Estados:
    S0:
        -Repouso
    S1:
        -Ler entradas X e Y e armazenar nos registradores
    S2:
        -Computar A e registrar em reg A
    S3:
        -Computar B e registrar em reg B
    S4: 
        -Computar D
        -Computar E
        -Computar D*E e registrar em reg DE
    S5:
        -Computar a expressão completa e registrar em reg Z

Compilação:
```
iverilog -o nome arquivo.v
```

Testbench:
```
iverilog -o nome arquivo.v test_bench.v
vvp nome
```
