# Exercício 04: Montagem de programa assembly (do assembly para o código de máquina)

1. Sabendo que o rótulo inicio foi armazenado no endereço de memória 65540 e considerando o formato das instruções do processador RISC-V, qual o código de máquina (binário) deste programa?  

```assembly
inicio:
  addi a0, zero, -4
  beq a0,s0, rot
  add s1, t0, t1
  lw t1, 20 (s1)
  j inicio
rot:
  sw t1,0 (s2)
```

2. Dado o código de máquina do RISC-V mostrado abaixo apresente o código assembly do mesmo:

|  | Hex      | Bin                              |
|--|----------|----------------------------------|
|1 | 00259f93 | 00000000001001011001111110010011 |
|2 | 00af8fb3 | 00000000101011111000111110110011 |
|3 | 000fae83 | 00000000000011111010111010000011 |
|4 | ffcf8f93 | 11111111110011111000111110010011 |
|5 | 00261f13 | 00000000001001100001111100010011 |
|6 | 00af0f33 | 00000000101011110000111100110011 |
|7 | 01df2023 | 00000001110111110010000000100011 |
|8 | 00008067 | 00000000000000001000000001100111 |
