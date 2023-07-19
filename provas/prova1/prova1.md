# Prova NP1

1. (1.0) Apresente e descreva detalhadamente as proposições de Von Neumann para a construção de computadores digitais

2. (2.5) Utilizando o conjunto de instruções do RISC-V implemente a função diferenca que recebe em a0 o endereço de um vetor e em a1 o tamanho deste vetor. A função deve calcular e retornar em a0 a diferença entre o maior e o menor valor presente no vetor.

3. (2.0) Considerando a equação abaixo e a arquitetura de armazenamento baseado em acumulador (também chamado de registrador de trabalho) faça o que se pede.
   $$
   S = (A^2 - (\frac{C}{A})) * (\frac{D+B}{2^C})
   $$

a) Defina a sintaxe e a semântica das instruções;  
b) Apresente o programa que implementa a equação acima utilizando o conjunto de instruções apresentados no item anterior.

4. (2.0) Considerando o formato das instruções do processador RISC-V, qual o código de máquina (binário) deste programa?

```assembly
ret_pos:
  add a7, zero, zero

laco:
  beq zero, a3, out_laco.
  addi a7, a7, 4
  addi a3, a3, -1
  j laco

out_laco:
  add a3, zero, a7
  ret
```

5. (2.5) Considere os seguintes valores presentes na memória de programa e no banco de registradores:

Memória de programa:
| Endereço | Valor                            |
| :------: | :------------------------------: |
| 200      | 11111111110000000000010100010011 |
| 204      | 00000000100001010000100001100011 |
| 208      | 00000000011000101000010010110011 |
| 212      | 00000001010001001010001100000011 |
| 216      | 11111111010111111111000001101111 |
| 220      | 00000000011010010010000000100011 |

Banco de Registradores:
| x0    | zero  | 0x00000000 |
| :---: | :---: | :--------: |
| x1    | ra    | 0x00000000 |
| x2    | sp    | 0x7ffffff0 |
| x3    | gp    | 0x10000000 |
| x4    | tp    | 0x00000000 |
| x5    | t0    | 0x00000000 |
| x6    | t1    | 0x00000007 |
| x7    | t2    | 0x00000000 |
| x8    | s0    | 0x00000000 |
| x9    | s1    | 0x00000000 |
| x10   | a0    | 0x00000000 |
| x11   | a1    | 0x00000000 |
| x12   | a2    | 0x00000000 |
| x13   | a3    | 0x00000000 |
| x14   | a4    | 0x00000000 |
| x15   | a5    | 0x00000000 |
| x16   | a6    | 0x00000000 |
| x17   | a7    | 0x00000000 |
| x18   | s2    | 0x00000000 |

Apresente os valores presentes nas posições A, B, C, D e E nos dois primeiros ciclos de clock do processador RISC-V monociclo, considerando que o PC inicia com o valor 204.

| Posição | Ciclo 1 | Ciclo 2 |
| :-----: | :-----: | :-----: |
| A       |         |         |
| B       |         |         |
| C       |         |         |
| D       |         |         |
| E       |         |         |
| F       |         |         |
| G       |         |         |
| H       |         |         |
| J       |         |         |