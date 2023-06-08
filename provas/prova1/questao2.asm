# using a do while, create an loop that goes through an array and stores the largest and smallest number in variables
# print the difference between the largest and smallest number
const vetor = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let i = 0
let maior = 0
let menor = 0

do {
  if (vetor[i] > maior) {
    maior = vetor[i]
  } else if (vetor[i] < menor) {
    menor = vetor[i]
  }
  i++
} while (i < vetor.length)

console.log(maior - menor)

#
