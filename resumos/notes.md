# Organização de Computadores

## Arquitetura de Von Neumann
A arquitetura de Von Neumann é uma arquitetura de computador que foi proposta por John von Neumann em 1945. Ela é baseada em um modelo de computador que possui um processador central, memória de programa e memória de dados. A arquitetura de Von Neumann é a base para a maioria dos computadores modernos.

### Processador
O processador é o componente responsável por executar as instruções do programa. Ele é composto por um conjunto de registradores e uma unidade de controle. O conjunto de registradores é composto por registradores de propósito geral e registradores de propósito especial. Os registradores de propósito geral são utilizados para armazenar dados e endereços de memória. Os registradores de propósito especial são utilizados para armazenar endereços de memória e flags de controle. A unidade de controle é responsável por controlar o fluxo de execução do programa.

### Memória de Programa
A memória de programa é responsável por armazenar o programa que será executado pelo processador. A memória de programa é composta por um conjunto de células de memória, cada uma com um endereço de memória associado. Cada célula de memória é composta por um conjunto de bits que podem ser lidos e escritos pelo processador.

### Memória de Dados
A memória de dados é responsável por armazenar os dados utilizados pelo programa. A memória de dados é composta por um conjunto de células de memória, cada uma com um endereço de memória associado. Cada célula de memória é composta por um conjunto de bits que podem ser lidos e escritos pelo processador.

### Unidade de Controle
A unidade de controle é responsável por controlar o fluxo de execução do programa. Ela é composta por um conjunto de registradores de controle e um conjunto de circuitos lógicos. Os registradores de controle são utilizados para armazenar flags de controle. Os circuitos lógicos são responsáveis por controlar o fluxo de execução do programa.

### Registradores de Controle
Os registradores de controle são utilizados para armazenar flags de controle. Cada flag de controle indica se uma determinada ação deve ser executada ou não. Por exemplo, a flag de controle de leitura de memória indica se a memória deve ser lida ou não. A flag de controle de escrita de memória indica se a memória deve ser escrita ou não.

### Circuitos Lógicos
Os circuitos lógicos são responsáveis por controlar o fluxo de execução do programa. Por exemplo, o circuito lógico de leitura de memória é responsável por controlar a leitura de dados da memória de dados. O circuito lógico de escrita de memória é responsável por controlar a escrita de dados na memória de dados.

### Registradores de Propósito Geral
Os registradores de propósito geral são utilizados para armazenar dados e endereços de memória. Por exemplo, o registrador de propósito geral AX é utilizado para armazenar dados de 16 bits. O registrador de propósito geral EAX é utilizado para armazenar dados de 32 bits. O registrador de propósito geral RAX é utilizado para armazenar dados de 64 bits.

### Registradores de Propósito Especial
Os registradores de propósito especial são utilizados para armazenar endereços de memória e flags de controle. Por exemplo, o registrador de propósito especial IP é utilizado para armazenar o endereço de memória da próxima instrução a ser executada. O registrador de propósito especial EFLAGS é utilizado para armazenar flags de controle.

### Flags de Controle
As flags de controle são utilizadas para indicar se uma determinada ação deve ser executada ou não. Por exemplo, a flag de controle de leitura de memória indica se a memória deve ser lida ou não. A flag de controle de escrita de memória indica se a memória deve ser escrita ou não.

### Instruções
As instruções são os comandos utilizados para controlar o fluxo de execução do programa. Por exemplo, a instrução MOV é utilizada para mover dados de um registrador para outro registrador. A instrução ADD é utilizada para somar dois valores.

### Endereços de Memória
Os endereços de memória são utilizados para identificar uma determinada célula de memória. Por exemplo, o endereço de memória 0x00000000 é utilizado para identificar a primeira célula de memória da memória de programa. O endereço de memória 0x00000001 é utilizado para identificar a segunda célula de memória da memória de programa.

### Células de Memória
As células de memória são utilizadas para armazenar dados. Por exemplo, a célula de memória 0x00000000 é utilizada para armazenar o primeiro byte da memória de programa. A célula de memória 0x00000001 é utilizada para armazenar o segundo byte da memória de programa.

### Registradores
Os registradores são utilizados para armazenar dados e endereços de memória. Por exemplo, o registrador AX é utilizado para armazenar dados de 16 bits. O registrador EAX é utilizado para armazenar dados de 32 bits. O registrador RAX é utilizado para armazenar dados de 64 bits.

## Arquitetura de Harvard
A arquitetura de Harvard é uma arquitetura de computador que foi proposta por Howard Aiken em 1944. Ela é baseada em um modelo de computador que possui um processador central, memória de programa e memória de dados. A arquitetura de Harvard é a base para a maioria dos computadores modernos.

## Arquitetura do Conjunto de Instruções e Formato de Representação das Instruções

### Conjunto de Instruções
O conjunto de instruções é o conjunto de instruções que podem ser executadas pelo processador. Por exemplo, o conjunto de instruções x86-64 é composto pelas instruções MOV, ADD, SUB, MUL, DIV, CMP, JMP, JZ, JNZ, CALL, RET, PUSH, POP, LEA, NOP, HLT, INT, IRET, IN, OUT, SHL, SHR, SAL, SAR, ROL, ROR, RCL, RCR, AND, OR, XOR, NOT, TEST, INC, DEC, NEG, CBW, CWD, CWDE, CDQ, CQO, MOVZX, MOVSX, XCHG, XADD, CMPXCHG, BSWAP, SETE, SETNE, SETL, SETLE, SETG, SETGE, SETB, SETBE, SETA, SETAE, SETO, SETNO, SETS, SETNS, SETP, SETNP, SETC, SETNC, LOOP, LOOPE, LOOPNE, LOOPNZ, LOOPZ, JCXZ, JECXZ, JRCXZ, JAE, JNAE, JNB, JNC, JBE, JNA, JA, JNBE, JL, JNGE, JGE, JNL, JLE, JNG, JG, JNLE, JNO, JNP, JNS, JNZ, JO, JP, JPE, JPO, JS, JZ, JC, JNA, JAE, JNB, JNC, JBE, JNA, JA, JNBE, JL, JNGE, JGE, JNL, JLE, JNG, JG, JNLE, JNO, JNP, JNS, JNZ, JO, JP, JPE, JPO, JS, JZ, JC, JNA, JAE, JNB, JNC, JBE, JNA, JA, JNBE, JL, JNGE, JGE, JNL, JLE, JNG, JG, JNLE, JNO, JNP, JNS, JNZ, JO, JP, JPE, JPO, JS, JZ, JC, JNA, JAE, JNB, JNC, JBE, J

### Formato de Representação das Instruções
O formato de representação das instruções é o formato utilizado para representar as instruções. Por exemplo, o formato de representação das instruções x86-64 é composto por um opcode de 8 bits e um operando de 64 bits.
