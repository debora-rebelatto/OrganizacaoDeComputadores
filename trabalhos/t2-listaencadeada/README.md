# Linked List


Descrição:

Faça um programa que implementa a gerencia de uma lista ordenada com capacidade de armazenar números inteiros.  
O inicio da lista deve estar armazenado em uma posição de memória de nome head com valor inicial 0 (NULL).  
Cada posição da lista ocupa 8 bytes, onde 4 bytes são usados para armazenar o valor inteiro e 4 bytes para armazenar o ponteiro para o próximo elemento.  

- O elemento encontra-se na posição de memória 400;  
- O valor armazenado no endereço &400 é 7, que corresponde ao valor do elemento da lista;  
- O valor armazenado no endereço &404 é 220, que corresponde ao endereço do próximo elemento da lista na memória.  

O programa deve ser implementado utilizando o conjunto de instruções do processador RISC-V e deve ser executado no simulador RARS.  

A função main a qual deve conter um menu com o acesso as seguintes funcionalidades  

## Lista de Funcionalidades

1. **Inserir elemento na lista**
   - [x] A função deve alocar memória e inserir o elemento de forma ordenada na lista.

2. **Remover elemento da lista por índice**
   - [x] A função deve remover o elemento de acordo com sua posição (índice) na lista. 
   - [x] Considerar que os índices começam em 0 (zero).

3. **Remover elemento da lista por valor**
   - [x] A função deve remover da lista apenas o primeiro elemento encontrado com o valor recebido pela função.

4. **Mostrar todos os elementos da lista**
   - [x] Imprime na tela todos os elementos presentes na lista.

5. **Mostrar estatísticas**
   - [ ] Imprime na tela as seguintes informações:
     - [ ] Quantidade de elementos presentes na lista
     - [ ] Maior valor presente na lista
     - [ ] Menor valor presente na lista
     - [ ] Quantidade de inserções realizadas
     - [ ] Quantidade de remoções realizadas

6. **Sair do programa**
   - [x] Encerra a execução do programa.

**TODO**
Valores de estatísticas não estão sendo atualizados na remoção de elementos  
Não está retornando 1 ou -1 como retorno das funções

A função main deve ler do teclado os valores a serem passados como parâmetro para as funções. Por exemplo, para inserir um valor na lista, ainda dentro da função main deve-se ler o valor inteiro, que então será passado como parámetro para a função insere inteiro.

Segue a descrição detalhada de cada uma das funções a serem implementadas pelo programa:

**int insere\_inteiro (int \*head, int valor)**  
Parâmetros recebidos:  
a0: a posição de memória do ponteiro para o inicio da lista;  
a1: o valor a ser inserido;  
Retorno da função:  
em caso de sucesso: o indice da posição inserida;  
em caso de falha: -1 caso não tenha sido possível inserir na lista;  
Funcionalidade: a função deve alocar memória (usar ecall) e inserir o elemento de forma ordenada na lista;  


**int remove\_por\_indice (int \*head, int indice)**  
Parâmetros recebidos:  
a0: a posição de memória do ponteiro para o inicio da lista;  
a1: o indice do elemento da lista a ser removido;  
Retorno da função:  
em caso de sucesso: o valor presente na posição removida;  
em caso de falha: -1 caso não tenha sido possível remover da lista;  
Funcionalidade: a função deve retirar o elemento que esteja no indice informado;  

**int remove\_por\_valor (int \*head, int valor)**  
Parâmetros recebidos:  
a0: a posição de memória do ponteiro para o inicio da lista;  
a1: o valor a ser removido;  
Retorno da função:  
    em caso de sucesso: o indice do elemento removido;  
    em caso de falha: -1 caso não tenha sido possível remover da lista;  
Funcionalidade: a função deve retirar o primeiro elemento com o valor informado presente nada lista;  

**void imprime\_lista (int \*head)**  
Parâmetros recebidos:  
a0: a posição de memória do ponteiro para o inicio da lista;  
Retorno da função: a função não possui retorno  
Funcionalidade: a função deve mostrar na tela todos os elementos presentes na lista;  


**void estatistica();**  
Retorno da função: a função não possui retorno  
Funcionalidade: mostrar as estatisticas apresentadas acima  

Após o retorno da chamada de cada função, a função main deve mostrar na tela o resultado da operação. Por exemplo, no retorno da função insere_valor se o retorno for -1 deve mostrar uma mensagem como "Erro ao inserir elemento na lista" ou, em caso de
sucesso "Valor X inserido na posição Z da lista".  

Após informar o resultado da operação o programa deve mostrar novamente o menu principal para uma nova operação ser escolhida pelo usuário.  

**Detalhamento do Cronograma:**  
Entrega inicial (02/06) - lista de funcionalidades que devem estar prontas:  
(a) a função main com o menu para chamada de todas as opções;  
na função main a leitura do valor de entrada que será passado para a respectiva função para cada função;  
(b) a chamada de cada uma das funções conforme a seleção no menu, passando os valores para a função;
(c) a mensagem informando o resultado da operação de cada uma das funções;  
(d) a inserção de valores na lista (não precisa inserir de forma ordenada nesta entrega);  
Para as atividades (b) e (c) não é necessário a implementação do corpo das funções, somente a chamada e o retorno das mesmas.  


Entrega intermediária (12/06) - lista de funcionalidades que devem estar prontas:  
(a) a função insere inteiro completa;  
(b) a função imprime lista completa  
(c) a função estatistica mostando o maior e o menor valor presentes na lista e a quantidade de inserções;  

Entrega final (23/06) - Todas as funcionalidades da lista encadeada solicitadas  

Nota do trabalho:  
A nota será composta da seguinte forma:  
- 50% implementação das funcionalidades  
- 50% apresentação e explicações sobre a implementação  

Penalidades das entregas inicial e intermediária do cronograma em relação a nota final do trabalho:  
- não fez uma entrega: 10% por entrega não realizada;  
- entrega atrasada: 5% por entrega atrasada;  
- funcionalidade não implementada na entrega: 2% por cada funcionalidade não entregue.  

Em caso de plágio a nota será zero.  