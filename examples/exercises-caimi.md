Exercício 03: programas assembly

1. Implemente uma programa utilizando o ISA RV32I do RISC-V que lê 3 valores (A, B e C) e verifica qual é o maior dos três valores.

2. Implemente uma programa utilizando o ISA RV32I do RISC-V que imprime todos os valores presentes em um vetor.

3. Implemente uma programa utilizando o ISA RV32I do RISC-V que lê 3 valores (A, B e C) e verifica se os mesmos podem formar um triângulo.

   Dica: quando 'A' é o maior valor, os valores formam um triângulo se A < B+C. Generalizar para quando 'B' ou 'C' é o maior

   a) O programa deve ter uma função que recebe os valores lidos (em a0, a1 e a2) e retorna se é triangulo (0 ou 1) em a0;

   b) A função principal deve fazer a interface com o usuário: ler os valores antes da chamada da função e mostrar o resultado depois da chamada da função

Exemplos:

- Ao receber os valor 5, 7 e 6 a função deve retornar que forma um triângulo (retorna 1 em a0);

- Ao receber os valores 7, 3 e 4 a função deve retornar que não formam um triângulo (retorna 0 em a0).

4. Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que realiza o swap entre duas posições de um vetor de inteiros. A função tem o seguinte protótipo:

void swap(int & vet, int indice_1, int indice_2);

os parâmetros da função (&vet, indice_1, indice_2) são passados, respectivamente, nos registradores a0 até a2.

Exemplo:
Considerando int vetor[7] = {-10, 8, 11, 16, 15, -6, 22}
ao chamar a função swap com a0 = &vet, a1 = 5 e a2 = 1, ao encerrar a execução da função teremos o vetor assim
vetor[7] = {-10, -6, 11, 16, 15, 8, 22}

5.  Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que desloca o conteúdo de um vetor para direita. A função tem o seguinte protótipo:

void shift(int & vet, int indice_1, int indice_2);

os parâmetros da função (&vet, indice_1, indice_2) são passados, respectivamente, nos registradores a0 até a2.

Exemplo:
Considerando int vetor[7] = {-10, 8, 11, 16, 15, -6, 22}
ao chamar a função shift com a0 = &vet, a1 = 5 e a2 = 1, ao encerrar a execução da função teremos o vetor assim
vetor[7] = {-10, -6, 8, 11, 16, 15, 22}

6. Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que ordena um vetor em ordem crescente.

7. Implemente uma função utilizando o conjunto de instruções RISC-V R32IM que lê uma string do teclado e remove todas as vogais presentes na mesma e em seguida imprime a mesma.

Última atualização: quinta, 27 Abr 2023, 17:43