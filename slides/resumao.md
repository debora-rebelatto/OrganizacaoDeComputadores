# Resumão

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
