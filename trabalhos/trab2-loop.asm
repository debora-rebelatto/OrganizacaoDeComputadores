# https://github.com/debora-rebelatto/Org2023/blob/main/trabalhos/trab2.asm
.data
    z: .word 0    # initialize z to 0
	newline: .ascii "\n"

.text
main:
    li s0, 10    # initialize x to 10
    lw t0, z     # usar load word para inizializa

loop:
    add t0, t0, s0  # add x to z
    addi s0, s0, -1  # decrement x by 1

printz:
	# print the value of z
	 lw a0, z     	# load the value of z from memory into a0
	 li a0, 1          		# load the print integer syscall number into a7
	 ecall             		# execute the syscall to print z to console

printnewline:
    # print a newline character
    la a0, newline    # load the address of newline into a0
    li a7, 4          # load the print string syscall number into a7
    ecall             # execute the syscall to print newline to console

    bgt s0, zero, loop  # loop while x > 0

    la a0, z
    li a7, 1
    ecall
