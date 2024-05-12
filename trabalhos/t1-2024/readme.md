# Trabalho 1 - Organização de Computadores
Aluna: Débora Rebelatto  

1) Implemente uma programa utilizando o ISA RV32I do RISC-V que lê 3 valores (A, B e C) e verifica se os mesmos podem formar um triângulo.
    Dica: quando 'A' é o maior valor, os valores formam um triângulo se A < B+C. Generalizar para quando  'B' ou 'C' é o maior
    a) O programa deve ter uma função que recebe os valores lidos (em a0, a1 e a2) e retorna se é triangulo (0 ou 1) em a0;
    b) A função principal deve fazer a interface com o usuário: ler os valores antes da chamada da função e mostrar o resultado depois da chamada da função

Exemplos:
- Ao receber os valor 5, 7 e 6 a função deve retornar que forma um triângulo (retorna 1 em a0);
- Ao receber os valores 7, 3 e 4 a função deve retornar que não formam um triângulo (retorna 0 em a0).

[Resposta](./q1.asm)

2) Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que verifica se uma string é um palindromo. A função recebe em a0 o endereço inicial da string e em a1 o seu tamanho e retorna se a string é ou não um palindrome em a0 (0-não; 1-sim).

[Resposta](./q2.asm)

3) Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que imprime no console o conteúdo de um vetor de inteiros. A função deve receber em a0 o endereço inicial do vetor e em a1 o tamanho do vetor a ser impresso.

[Resposta](./q3.asm)

4) Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que ordena um vetor de inteiros em ordem crescente. A função deve receber em a0 o endereço inicial do vetor e em a1 o tamanho do vetor a ser ordenado.

[Resposta](./q4.asm)

5) Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que lê uma string do teclado e remove todas as vogais presentes na mesma e em seguida imprime a mesma.

[Resposta](./q5.asm)
