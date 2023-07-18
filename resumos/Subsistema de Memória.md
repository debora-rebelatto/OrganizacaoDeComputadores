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
