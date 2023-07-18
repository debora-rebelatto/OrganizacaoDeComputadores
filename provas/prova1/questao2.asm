# function diferenca(a0, a1) {
#   var vetor = a0; // endereço do vetor
#   var tamanho = a1; // tamanho do vetor

#   var maior = vetor[0]; // assume o primeiro elemento como o maior
#   var menor = vetor[0]; // assume o primeiro elemento como o menor

#   var i = 1; // começa a iteração a partir do segundo elemento

#   do {
#     if (vetor[i] > maior) {
#       maior = vetor[i]; // atualiza o maior valor, se necessário
#     }
#     if (vetor[i] < menor) {
#       menor = vetor[i]; // atualiza o menor valor, se necessário
#     }
#     i++; // incrementa o contador
#   } while (i < tamanho); // continua enquanto i for menor que o tamanho

#   return maior - menor; // retorna a diferença entre o maior e o menor valor
#}

