# Resumão

# Von Neumann Architecture

A arquitetura de Von Neumann é uma arquitetura de computador que foi proposta por John Von Neumann em 1945.

[Organização estruturada de Computadores, página 15](../slides/01_Organização%20estruturada%20de%20computadores%20by%20Andrew%20S.%20Tanenbaum.pdf)

Cinco partes básicas:

- Memória
- Unidade de lógica e aritmética
- Unidade de controle
- Equipamento de entrada e saída

A máquina de von Neumann tinha cinco partes básicas: a memória, a unidade de lógica e aritmética, a unidade de controle e o equipamento de entrada e saída. A memória consistia em 4.096 palavras, uma palavra contendo 40 bits, cada bit sendo 0 ou 1.

Cada palavra continha ou duas instruções de 20 bits ou um inteiro de 40 bits com sinal. As instruções tinham 8 bits dedicados a identificar o tipo da instrução e 12 bits para especificar uma das 4.096 palavras de memória. Juntas, a unidade de lógica e aritmética e a unidade de controle formavam o “cérebro” do computador. Em computadores modernos, elas são combinadas em um único chip, denominado CPU (Central Processing Unit – unidade central de processamento).

Dentro da unidade de lógica e aritmética havia um registrador interno especial de 40 bits, denominado acumulador. Uma instrução típica adicionava uma palavra de memória ao acumulador ou armazenava o conteúdo deste na memória. A máquina não tinha aritmética de ponto flutuante porque von Neumann achava que qualquer matemático competente conseguiria acompanhar o ponto decimal (na verdade, o ponto binário) de cabeça

<img src="./imgs/VonneumannDiagram.jpeg">


## Arquitetura do Conjunto de Instruções e Formato de Representação

### Arquitetura do Conjunto de Instruções

- **Instrução de máquina**: é um comando que o processador pode executar. Cada instrução é representada por um número binário, chamado de **código de operação** ou **opcode**. O opcode é o primeiro campo da instrução e indica qual a operação que deve ser executada. O segundo é os operandos, que são os dados que a operação deve ser executada. O número de operandos varia de acordo com a instrução.

Ex.:  
**add** t0, t1, 10  
**lw** t0, 0(t1)

Onde a parte em negrito é o opcode e o restante são os operandos.

- **Formato de representação**: é a forma como a instrução é representada em binário. O formato de representação é definido pela arquitetura do processador.

- **Conjunto de instruções**: é o conjunto de instruções que um processador pode executar. O conjunto de instruções é definido pela arquitetura do processador.

- **Arquitetura do conjunto de instruções**: é o conjunto de instruções que um processador pode executar e o formato de representação de cada instrução. A arquitetura do conjunto de instruções é definida pela arquitetura do processador.

São definidas a partir de sintaxe e semântica.
A **sintaxe** é a forma como a instrução é escrita e a **semântica** é o significado da instrução.

Sintaxe:
push op;

Semântica:
pilha[topo] = op;
topo++;

Onde op é o operando, push é o opcode e () é o endereçamento.

## Classificação quanto ao tipo de armazenamento interno:

- Arquitetura de Pilha
- Arquitetura de Acumulador
- Arquitetura de Registradores
- Arquitetura de Memória

# Pipeline

## Introdução

## Conflitos de Dados
RAW - Read After Write
WAR - Write After Read
WAW - Write After Write

## Conflitos de Controle

Ocorre quanto uma instrução utiliza o rescurso de ser PC + offset, ou seja, uma instrução que contém um devio, porém boa parte das instruções são feitas para ser PC + 4. O que pode gerar um conflito de controle.
Ocorrem porque ainda não se sabe para onde será o devio, e o que será executado após o desvio. Apenas se sabe para onde será o desvio após o cálculo do offset. Depois disso é feito um flush nas instruções que seriam executadas após o desvio e é substituído por pc + offset ao invés de pc + 4.

Ex.:

```assembly
beq $t0, $t1, label
jump label2
```

## Como resolver os Conflitos de Controle
- Instrução `nop` (no operation)
- Adiantamento de instruções (branch delay slot)
- Adiantamento de instruções com desvio condicional (branch delay slot with branch prediction)


# Subsistema de Memória

# Cache Policy

- Local temporal
- Local espacial

2^0 = 1 bit
2^1 = 2 bits
2^2 = 4 bits
2^3 = 8 bits
2^4 = 16 bits
2^5 = 32 bits
2^6 = 64 bits
2^7 = 128 bits
2^8 = 256 bits
2^9 = 512 bits
2^10 = 1024 bits

A cache organiza os dados de forma sequencial.

| 0x2e | 00000 |
| 0x2f | 00001 |
| 0x30 | 00010 |
| 0x31 | 00011 |
| 0x32 | 00100 |
| 0x33 | 00101 |
| 0x34 | 00110 |
| 0x35 | 00111 |

Como Calcular a Memória Principal?
MP = B \* K
MP = Memória Principal
B = Número de Blocos
K = Tamanho do Bloco

Sendo assim, para encontrar a quantidade de blocos na memória principal, basta dividir o tamanho da memória principal pelo tamanho do bloco.

B = ?
MP = 32
K = 4

Podemos substituír o valor de MP na fórmula:
32 = B \* 4
Sendo:
B = 32 / 4
B = 8

Ao solicitar um endereço de memória se recebe também o deslocamento, que é o número de bits necessários para representar o endereço de memória.

O Bloco é uma divião lógica
Para o seguinte endereço:
00110
O bloco é: 0011
O deslocamento é: 10
O rótulo é: 00
O número da linha é: 1

Políticas de mapeamento

- Direto
- Associativo
- Associativo por conjunto

# Direto

Cada bloco da memória principal tem um único local na cache onde pode ser armazenado.
Linha de destino = (Endereço da memória principal) % (Número de linhas da cache)

Exemplo:
Endereço da memória principal: 00110
Número de linhas da cache: 4
Linha de destino = 00110 % 4
Linha de destino = 2

# Associativo

Cada bloco da memória principal pode ser armazenado em qualquer local da cache.
Cada bloco da MP é pré definido a um conjunto da cache dentro do conjunto e pode ser armazenado em qualquer local da cache.

Comparadores

- Rótulo
- Número da linha

# Associativo por conjunto

Divide a memória principal em conjuntos.


# Política de Substituição
- FIFO (First In First Out)
- LFU (Least Frequently Used)
- LRU (Least Recently Used)

## FIFO
O primeiro dado a entrar é o primeiro a sair.

## LFU
Associa a frequência de acesso a partir de um contador, quando ele precisa alterar a cache e remover algo, seleciona o que foi acessado menos vezes. Ao acessar um dado, o contador é incrementado.

## LRU
Associa a quanto tempo o dado não é acessado a partir de um contador, quando ele precisa alterar a cache e remover algo, seleciona o que não é acessado a mais tempo. Ao acessar um dado, o contador é zerado.

Ex.:
Primeiro acesso,
Dado 0x2e, contador = 0:
| Dado | Contador |
| 0x2e | 0 |
| 0x2f | 1 |
| 0x30 | 1 |
| 0x31 | 1 |

Segundo acesso,
Dado 0x2e, contador = 0:
| Dado | Contador |
| 0x2e | 0 |
| 0x2f | 2 |
| 0x30 | 2 |
| 0x31 | 2 |

Terceiro acesso,
0x2f, contador = 0:
| Dado | Contador |
| 0x2e | 1 |
| 0x2f | 0 |
| 0x30 | 3 |
| 0x31 | 3 |

Quarto acesso,
Dado 0x30, contador = 0:
| Dado | Contador |
| 0x2e | 2 |
| 0x2f | 1 |
| 0x30 | 0 |
| 0x31 | 4 |

Seguindo a lógica, o próximo dado a ser removido é o 0x31, pois é o que não foi acessado a mais tempo e o contador é o mais alto entre todos os dados.

# Política de Escrita
- Write Both
- Escrita no retorno


# 👻 ISA - Instruction Set Architecture

## RISC-V

### Introdução

<img src="./quadro1.jpg">

SLLI (Shift Left Logical Immediate).
SRLI (Shift Right Logical Immediate).
SRAI (Shift Right Arithmetic Immediate).

2048 1024 512 256 128 64 32 16 8 4 2 1  
0 0 0 0 0 0 0 0 0 0 0 0 = Isso é 0  
0 0 0 0 0 0 0 0 0 0 0 1 = Isso é 1  
1 1 1 1 1 1 1 1 1 1 1 0 = Isso é -2  
1 1 1 1 1 1 1 1 1 1 0 0 = Isso é -4  

| Instruction |    const     |   2   |  r11  | f3  |  rd   | opcode  |
| :---------: | :----------: | :---: | :---: | :-: | :---: | :-----: |
|    SLLI     |    000000    | 00010 | 01011 | 001 | 11111 | 0010011 |
|     ADD     |   0000000    | 01010 | 11111 | 000 | 11111 | 0110011 |
|     LW      | 000000000000 | 11111 |  010  | 010 | 11101 | 0000011 |
|    ADDI     | 111111111100 | 00000 |  010  | 010 | 11111 | 0010011 |

<img src="./resolucao-exercicio.jpg">

Above, the first column is the instruction name, the second column is the binary encoding of the instruction, and the remaining columns are the fields of the instruction. The fields are:

    opcode: the general type of instruction (e.g., arithmetic, memory, etc.)
    rd: the register to write the result to
    funct3: a sub-type for the instruction (e.g., for arithmetic instructions, funct3 indicates the type of arithmetic operation to perform)
    rs1: the first register operand (Registrador de origem)
    rs2: the second register operand (Registrador de destino)
    funct7: a sub-type for the instruction (e.g., for arithmetic instructions, funct7 encodes whether the operation is an add, subtract, etc.)


Etapas de execução de uma instrução:
    1. Fetch
    2. Decode
    3. Execute
    4. Memory
    5. Write Back

A partir da categoria da instrução, o processador sabe qual é o tipo de instrução que ele tem que executar. A partir do opcode, ele sabe qual é a instrução que ele tem que executar. A partir do funct3, ele sabe qual é o tipo de instrução que ele tem que executar. A partir do rs1, ele sabe qual é o registrador de origem. A partir do rs2, ele sabe qual é o registrador de destino. A partir do funct7, ele sabe qual é o tipo de instrução que ele tem que executar.



