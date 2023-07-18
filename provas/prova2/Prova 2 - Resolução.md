# Prova 2 - Resolução

1- Suponha um sistema computacional com um espaço de endereçamento de 64K células. A cache associada a este sistema possui 32 linhas. Sabendo que cada linha contém 32 células, pergunta-se:

Anote uma tabela com os números elevados a potências de 2, começando por 0 e indo até 16. Exemplo:
| Potência | Resultado |
| -------- | --------- |
| 2^0 | 1 |
| 2^1 | 2 |
| 2^2 | 4 |
| 2^3 | 8 |
| 2^4 | 16 |
| 2^5 | 32 |
| 2^6 | 64 |
| 2^7 | 128 |
| 2^8 | 256 |
| 2^9 | 512 |
| 2^10 | 1024 |
| 2^11 | 2048 |
| 2^12 | 4096 |
| 2^13 | 8192 |
| 2^14 | 16384 |
| 2^15 | 32768 |
| 2^16 | 65536 |

Como calcular:
A próxima potência é o resultado da potência anterior multiplicado por 2 ou somado com ele mesmo.
Encontre o número do bloco
MP (Memória Principal) = 64K células => 2^16 células
K (Tamanho da Cache) = 32 linhas => 2^5 linhas
Bloco = ?

MP = B \* K
2^16 = B \* 2^5
B = 2^16 / 2^5
B = 2^(16 - 5)
B = 2^11 = 2048

Número de bloco usa 11 bits (2^11 = 2048)
Deslocamento usa 5 bits (2^5 = 32)

a) Qual é o número do bloco correspondente ao endereço ABCD_16?

O 16 se refere às 16 células de memória. O endereço ABCD_16 é um endereço hexadecimal, ou seja, cada dígito representa 4 bits.

Para converter de hexadecimal para binário, basta converter cada dígito hexadecimal em 4 bits binários. Exemplo:

| Hexadecimal | Binário |
| ----------- | ------- |
| 1           | 0001    |
| 2           | 0010    |
| 3           | 0011    |
| 4           | 0100    |
| 5           | 0101    |
| 6           | 0110    |
| 7           | 0111    |
| 8           | 1000    |
| 9           | 1001    |
| A           | 1010    |
| B           | 1011    |
| C           | 1100    |
| D           | 1101    |

ABCD_16 = 1010 1011 1100 1101

| Número do Bloco | Deslocamento |
| --------------- | ------------ |
| 1010 1011 110   | 01101        |

O número do bloco são os 11 primeiros bits, ou seja, 1010 1011 110. O deslocamento são os 5 últimos bits, ou seja, 01101.

Aqui já temos a resposta da letra a, que é o número do bloco: 1010 1011 110. Mas vamos converter para decimal.

Da direita para a esquerda, temos:

0 \* 2^0 = 0
1 \* 2^1 = 2
1 \* 2^2 = 4
1 \* 2^3 = 8
1 \* 2^4 = 16
0 \* 2^5 = 32
1 \* 2^6 = 64
0 \* 2^7 = 0
1 \* 2^8 = 256
0 \* 2^9 = 0
1 \* 2^10 = 1024

0 + 2 + 4 + 8 + 16 + 0 + 64 + 0 + 256 + 0 + 1024 = 1374

O número do bloco é 1374.

b) Considerando o mapeamento direto:
b1) Qual a divisão do endereço do ponto de vista da cache? Justifique.

A divisão no mapeamento direto é feita da seguinte forma:
Rótulo | Linha de Destinho | Deslocamento

Deslocamento = 32 células = 2^5 = 5 bits
Linha de Destino = 32 linhas = 2^5 = 5 bits

Calcular o rótulo:
Calcular a proporção de 64K blocos da MP para cada linha da cache:

Rótulo =
2048 blocos / 32 linhas = 64 blocos por linha

Assim:
**Rótulo = 64 blocos = 2^6 = 6 bits**

Precisamos de 6 bits para o rótulo, 5 bits para a linha de destino e 5 bits para o deslocamento. Totalizando 16 bits.

Esta é a divisão do endereço do ponto de vista da cache.
| Rótulo | Linha de Destino | Deslocamento |
| ------ | ---------------- | ------------ |
| 6 bits | 5 bits | 5 bits |

b2) Qual é o número da linha correspondente ao endereço ABCD_16?

O número da linha são os 5 bits do meio, ou seja, 1011110.

| Rótulo | Linha de Destino | Deslocamento |
| ------ | ---------------- | ------------ |
| 101010 | 11110            | 01101        |

Mas vamos converter para decimal.

Da direita para a esquerda, temos:

0 \* 2^0 = 0
1 \* 2^1 = 2
1 \* 2^2 = 4
1 \* 2^3 = 8
1 \* 2^4 = 16

0 + 2 + 4 + 8 + 16 = 30

**O número da linha é 30.**

c) Considerando o mapeamento associativo por conjuntos e que o sistema possui 4 conjuntos:

c1) Qual a **divisão** do ponto de vista da cache? Justifique.

A divisão no mapeamento associativo por conjuntos é feita da seguinte forma:

Rótulo | Conjunto | Deslocamento

Deslocamento = 32 células = 2^5 = 5 bits
Conjunto = 4 conjuntos = 2^2 = 2 bits

Calcular o rótulo:
Calcular a proporção de 64K blocos da MP para cada conjunto da cache
Rótulo = 2048 blocos / 4 conjuntos = 512 blocos por conjunto = 2^9 = 9 bits

Assim a divisão fica:

| Rótulo | Conjunto | Deslocamento |
| ------ | -------- | ------------ |
| 9 bits | 2 bits   | 5 bits       |

c2) Qual é o número do conjunto correspondente ao endereço ABCD_16?
Sabendo que ABCD_16 = 1010 1011 1100 1101

Separe os bits em 3 partes:

| Rótulo    | Conjunto | Deslocamento |
| --------- | -------- | ------------ |
| 101010111 | 10       | 01101        |

Sabendo que o conjunto é 10, vamos converter para decimal.

Da direita para a esquerda, temos:
0 \* 2^0 = 0
1 \* 2^1 = 2

0 + 2 = 2

**O número do conjunto é 2.**

d) Considerando o mapeamento associativo por conjuntos, é possível haver dois rótulos iguais em linhas pertencentes ao mesmo conjunto? Justifique.

e) Considerando o mapeamento associativo por conjuntos, é possível haver dois rótulos iguais em linhas pertencentes a conjuntos diferentes? Justifique.

2. Considerando a memória apresentada na questão acima, utilizando o mapeamento associativo por conjuntos com 4 conjuntos, descreva detalhadamente, a sequência de ações realizada pelo controlador da cache para fornecer o conteúdo do endereço de memória ABCD para o processador. Na descrição você deve apresentar os valores envolvidos (rótulo, conjunto, deslocamento, bloco) em cada ação realizada.

3. Considerando o pipeline de 5 estágios (IF/OF/EX/MEM/WB) do RISC-V sem adiantamento, apresente a evolução das instruções do programa abaixo no pipeline usando bolhas (stalls) e eliminações (flush) para resolver os conflitos existentes.

```assembly
  ADD t3, t4, t2
  LW t6, 20 (t3)
  BEQ t6, zero, pula # considere o beq verdadeiro
  ADDI t4, t6, -1
  J fim
pula:
  ADD t4, t6, t4
fim: nop
```

Explique os estários do pipeline:
IF: Busca a instrução na memória.
OF: Decodifica a instrução.
EX: Executa a instrução.
MEM: Acessa a memória.
WB: Escreve o resultado no registrador.

Bolha é quando o pipeline fica parado esperando o dado que está sendo processado.
Eliminação é quando o pipeline descarta o dado que está sendo processado.

Aqui, bolha é representado por um traço (—) e eliminação por um asterisco (\*).

CC = Ciclo de Clock

| Instrução | CC1 | CC2 | CC3 | CC4 | CC5 | CC6 | CC7 | CC8 |
| --------- | --- | --- | --- | --- | --- | --- | --- | --- |
| ADD       | IF  | OF  | EX  | MEM | WB  |     |     |     |
| LW        |     | IF  | OF  | -   | -   | EX  | MEM | WB  |
| BEQ       |     |     | IF  | -   | -   | OF  | -   | -   |
| ADDI      |     |     |     |     |     | IF  | -   | -   |

| Instrução | CC1 | CC2 | CC3 | CC4 | CC5 | CC6 | CC7 | CC8 |
| --------- | --- | --- | --- | --- | --- | --- | --- | --- |
| BEQ       | EX  | MEM | WB  |     |     |     |     |     |
| ADDI      | OF  | \*  | \*  | \*  |     |     |     |     |
| J         | IF  | \*  | \*  | \*  | \*  |     |     |     |
| ADD       |     | IF  | OF  | EX  | MEM | WB  |     |     |
| NOP       |     |     | IF  | OF  | EX  | MEM | WB  |     |

A tabela apresenta a evolução das instruções do programa no pipeline de 5 estágios (IF/OF/EX/MEM/WB) do processador RISC-V sem adiantamento, considerando a ocorrência de conflitos de dependência de dados.

Cada coluna representa um ciclo de clock (CC), e cada célula indica em qual estágio do pipeline uma determinada instrução está sendo executada naquele ciclo de clock.

Vamos analisar cada linha da tabela:

1. Instrução ADD:

   - No CC1, a instrução está no estágio IF (busca).
   - No CC2, a instrução avançou para o estágio OF (decodificação).
   - No CC3, a instrução passou para o estágio EX (execução).
   - No CC4, a instrução avançou para o estágio MEM (acesso à memória).
   - No CC5, a instrução chegou ao estágio WB (escrita do resultado).

2. Instrução LW:

   - No CC2, a instrução está no estágio IF (busca).
   - No CC3, a instrução avançou para o estágio OF (decodificação).
   - No CC6, a instrução está no estágio EX (execução) e aguarda o resultado de uma instrução anterior.
   - No CC7, a instrução passou para o estágio MEM (acesso à memória).
   - No CC8, a instrução chegou ao estágio WB (escrita do resultado).

3. Instrução BEQ:

   - No CC3, a instrução está no estágio IF (busca) e aguarda o resultado de uma instrução anterior.
   - No CC6, a instrução avançou para o estágio OF (decodificação).
   - Como o BEQ é verdadeiro, a instrução não precisa executar e avança para o estágio WB (escrita do resultado).

4. Instrução ADDI:

   - No CC6, a instrução está no estágio IF (busca) e aguarda o resultado de uma instrução anterior.
   - A partir do CC7, ocorrem bolhas (\*) nas etapas de OF, EX e MEM, para permitir que as instruções anteriores concluam suas execuções.
   - No CC7, a instrução avança para o estágio IF (busca) e continua seu processamento.

5. Instrução J:

   - No CC1, a instrução está no estágio IF (busca).
   - A partir do CC2, ocorrem bolhas (\*) nas etapas de OF, EX, MEM e WB, para permitir que as instruções anteriores concluam suas execuções.
   - No CC2, a instrução avança para o estágio IF (busca) e continua seu processamento.

6. Instrução NOP:
   - No CC3, a instrução está no estágio IF (busca) e aguarda o resultado de uma instrução anterior.
   - A partir do CC4, ocorrem bolhas (\*) nas etapas de OF, EX, MEM e WB, para permitir que as instruções anteriores concluam suas execuções.
   - No CC4, a instrução avança para o estágio IF (busca) e continua seu processamento.

A presença de bolhas e eliminações (representadas por traços e asteriscos na tabela) ajuda a resolver os conflitos de dependência de dados no pipeline, garantindo a correta execução das instruções.

4. O caminho de dados mostrado abaixo permite fazer o adiantamento (forwading) quando encontra um conflito de dados do tipo RAW.

a1) Marque na figura abaixo o caminho percorrido pelo dado quando ocorre um adiantamento na execução das instruções abaixo:

```assembly
ADD t0, t1, t2
ADD s1, t0, t0
```

Olhar [pdf da prova](./Prova_2_2023_1_ORG_correção.pdf). Não consegui fazer o desenho aqui.

a2) Descreva o que está ocorrendo no Pipeline e o comportamento do mesmo no que diz respeito ao forwarding

O que é o adiantamento (forwarding)?
O adiantamento (forwarding) é uma técnica utilizada para resolver conflitos de dependência de dados no pipeline. Ele permite que uma instrução acesse o resultado de uma instrução anterior, antes que este resultado seja escrito no registrador de destino.

b1) Marque na figura abaixo o caminho percorrido pelo dado quando ocorre um adiantamento na execução das instruções abaixo:

```assembly
LW s0, 0(s2)
ADD t0, s2, s3
ADD s2, s0, t1
```

Olhar [pdf da prova](./Prova_2_2023_1_ORG_correção.pdf). Não consegui fazer o desenho aqui.

b2) Descreva o que está ocorrendo no Pipeline e o comportamento do mesmo no que diz respeito ao forwarding
