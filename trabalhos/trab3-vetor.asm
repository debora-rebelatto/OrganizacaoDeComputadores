.data
	vetor:
		.word 7, 3, -9, 11, 4, 5, -1, 0, 6, 4  # example array of integers
	tamanho: .word 10
	resultado: .asciiz "Maior valor do array:  "
.text
main:
  la t0, vetor               # load address of vetor into x1
	lw t1, tamanho             # load tamanho into t0
  li s0, 0                   # initialize maior to 0
	li s1, 0                   # initialize x to 0
loop_start:
  lw s2, 0(t0)               # load vetor[x] into s2
  bge s2, s0, else_block     # if vetor[x] >= maior, jump to else_block
  j next_iteration           # jump to next_iteration
else_block:
  lw s0, 0(t0)               # load vetor[x] into maior
next_iteration:
  addi t0, t0, 4             # increment pointer to next element of vetor
  addi s1, s1, 1             # increment x by 1
  bne s1, t1, loop_start     # loop while x < 10
  # s0 now contains the largest number in vetor

print_result:
  mv a0, s0                  # move the value of maior into a0 (the argument register)
  li a7, 1                   # load system call number for printing an integer
  ecall                      # make the system call

  jr ra                      # return from subroutine