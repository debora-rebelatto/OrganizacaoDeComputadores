.data
    z: .word 0    # initialize z to 0
.text
main:
    li s0, 10    # initialize x to 10
    li t0, 0     # initialize z to 0

loop:
    add t0, t0, s0  # add x to z
    addi s0, s0, -1  # decrement x by 1
    
    bgt s0, zero, loop  # loop while x > 0

    la a0, z
    li a7, 1
    ecall
