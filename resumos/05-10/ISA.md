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



