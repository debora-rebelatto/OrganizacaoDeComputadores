.data
    vector: .align 2
    .word -5, 4, 2, -11, 9
    tamanho: .word 5

.text
main:
    la a0, vector      # Load base address of vector
    lw a1, tamanho     # Load size of vector
    li t0, 0          # Initialize loop counter (index)

    # Initialize maior and menor
    lw s0, 0(a0)      # Initialize maior to the first element
    mv s1, s0         # Initialize menor to the same value as maior

loop:
    beq t0, a1, end   # Exit loop if all elements processed (t0 == size)

    slli t1, t0, 2    # Calculate offset: t1 = t0 * 4
    add t1, a0, t1    # Calculate address: t1 = base + offset
    lw t2, 0(t1)      # Load the current element into t2

    # Update maior and menor
    blt s0, t2, update_maior   # If maior < t2, update maior
    bgt s1, t2, update_menor   # If menor > t2, update menor

    addi t0, t0, 1    # Increment loop counter
    j loop           # Jump back to the start of the loop

update_maior:
    mv s0, t2        # Update maior with the new value
    j loop

update_menor:
    mv s1, t2        # Update menor with the new value
    j loop

end:
    # At this point, s0 holds the largest value and s1 holds the smallest

    # For demonstration, printing the results (you'll need to adapt this for your specific output needs)
    mv a0, s0        # Move the largest value to a0 (argument for print integer)
    li a7, 1         # Print integer system call
    ecall

    mv a0, s1        # Move the smallest value to a0
    li a7, 1         # Print integer system call
    ecall

    li a7, 93       # Exit
    ecall
