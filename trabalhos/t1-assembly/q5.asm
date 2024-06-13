.data
input_string: .space 100
output_string: .space 100 

.text
.globl _start

_start:
    la a0, input_string
    li a1, 100
    jal ra, read_string
    
    la a0, input_string
    la a1, output_string
    jal ra, remove_vowels

    la a0, output_string
    jal ra, print_string
    
    li a7, 10
    ecall

read_string:
    li a7, 8
    ecall
    ret

remove_vowels:
    mv t0, a0
    mv t1, a1
    
loop:
    lbu t2, 0(t0)
    
    li t3, 'a'
    beq t2, t3, skip_copy
    li t3, 'e'
    beq t2, t3, skip_copy
    li t3, 'i'
    beq t2, t3, skip_copy
    li t3, 'o'
    beq t2, t3, skip_copy
    li t3, 'u'
    beq t2, t3, skip_copy
    
    sb t2, 0(t1)
    addi t1, t1, 1
    
skip_copy:
    addi t0, t0, 1
    bnez t2, loop
    ret

print_string:
    li a7, 4
    li a2, 100
    ecall
    ret
