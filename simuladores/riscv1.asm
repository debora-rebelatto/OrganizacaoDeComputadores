.data
vetor:     .word 7, 3, -9, 11, 4, 5, -1, 0, 6, 4
tamanho:   .word 10
.text
.globl main

main:
    # recebe em a0 o endereço
    # recebe em a1 o tamanho
    # retorna em a0 a diferença entre o maior e o menor valor

    la a0, vetor
    lw a1, tamanho
    li s1, 0   # Initialize s1 with 0

    # Load the first element of vetor into s0
    lw s0, 0(a0)
    lw s2, 0(a0)
loop_start:


    # Check if it's the first iteration
    beqz a1, first_iteration

    blt s2, s0, update_menor
    bgt s2, s1, update_maior
    j continue_loop

first_iteration:
    mv s0, s2   # menor = vetor[x]
    mv s1, s2   # maior = vetor[x]
    j continue_loop

update_menor:
    mv s0, s2   # menor = vetor[x]
    j continue_loop

update_maior:
    mv s1, s2   # maior = vetor[x]

continue_loop:
    addi a0, a0, 4   # Increment vetor address by 4 bytes (word size)
    addi a1, a1, -1  # Decrement tamanho by 1
    bnez a1, loop_start   # If tamanho != 0, continue looping

    sub a0, s1, s0   # Calculate a0 = maior - menor (diferença)

    # End of program
    li a7, 10
    ecall
