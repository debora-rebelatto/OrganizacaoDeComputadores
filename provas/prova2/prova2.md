# Prova 2

1. Suponha um sistema computacional com um espaço de endereçamento de 64K células. A cache associada a este sistema possui 32 linhas. Sabendo que cada linha contém 32 células, pergunta-se:
   a) Qual é o número do bloco correspondente ao endereço ABCD16?

b) Considerando o mapeamento direto:
b1) Qual a divisão do endereço do ponto de vista da cache? Justifique.
b2) Qual é a linha de destino do endereço ABCD16?

c) Considerando o mapeamento associativo por conjuntos e que o sistema acima possui 4 conjuntos:
c1) Qual a divisão do endereço do ponto de vista da cache? Justifique.
c2) Qual é o conjunto de destino do endereço ABCD16?

d) Considerando o mapeamento associativo por conjuntos, é possível haver dois rótulos idênticos (explique e exemplifique sua resposta):
d1) em linhas pertencentes ao mesmo conjuntos?
d2) em linhas pertencentes a conjuntos diferentes?

2. (1,0) Considerando a memória apresentada na questão acima, utilizando o mapeamento associativo por conjuntos com 4 conjuntos, descreva detalhadamente, a sequência de ações realizada pelo controlador da cache para fornecer o conteúdo do endereço de memória ABCD para o processador. Na descrição você deve apresentar os valores envolvidos (rótulo, conjunto, deslocamento, bloco) em cada ação realizada.

3. (3,0) Considerando o pipeline de 5 estágios (IF/OF/EX/MEM/WB) do RISC-V sem adiantamento, apresente a evolução das instruções do programa abaixo no pipeline usando bolhas (stalls) e eliminações (flush) para resolver os conflitos existentes.

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

4. (3,0) O caminho de dados mostrado abaixo permite fazer o adiantamento (forwading) quando encontra um conflito de dados do tipo RAW.

a1) Marque na figura abaixo o caminho percorrido pelo dado quando ocorre um adiantamento na execução das instruções abaixo:

```assembly
ADD t0, t1, t2
ADD s1, t0, t0
```

a2) Descreva o que está ocorrendo no Pipeline e o comportamento do mesmo no que diz
respeito ao forwarding

b1) Marque na figura abaixo o caminho percorrido pelo dado quando ocorre um
adiantamento na execução das instruções abaixo:
LW s0, 0(s2)
ADD t0, s2, s3
ADD s2, s0, t1

b2) Descreva o que está ocorrendo no Pipeline e o comportamento do mesmo no que diz
respeito ao forwarding
