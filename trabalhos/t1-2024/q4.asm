.data
	.align 2
	vector: .word -5, 4, 2, -11, 9
	size: .word 5

#####################################################################
# s7 = Base address of the array (vector)
# a1 = Array size (number of elements)
# t0 = Outer loop counter (i)
# t1 = Inner loop counter (j)
# t2 = Number of remaining comparisons in inner loop (n - i - 1)
# t3 = Temporary register for calculations
# t4 = Memory address of the current element (arr[j])
# t5 = Memory address of the next element (arr[j + 1])
# s0 = Value of the current element (arr[j])
# s1 = Value of the next element (arr[j + 1])
# t6 = Temporary register for swapping (temp)
#####################################################################

.text
main:
	la s7, vector
	lw a1, size
	li t0, 0

outer_loop:
	addi t0, t0, 1		# increment loop
	li t1, 0 			# t1 goes back to 0
	
	mv t3, t0            # Store the current value of t0 in t3 for future use
    addi t3, t3, 1       # Add 1 to t3. t3 = i + 1
    sub t2, a1, t3       # Calculate t2 = n - i - 1
    
	beq t0, a1, print

inner_loop:
# Compare elements
    slli t4, t1, 2      # t4 = j * 4 
    add t4, t4, s7      # t4 = &s7[j]
    lw s0, 0(t4)        # s0 = arr[j]

    addi t5, t4, 4      # t5 = t4 + 4 
    lw s1, 0(t5)        # s1 = arr[j + 1]

    bge s0, s1, swap   # If s0 >= s1, swap
    j continue         # If s0 < s1, continue

swap:
    mv t6, s0          # t6 = temp = s0
    mv s0, s1          # s0 = s1
    mv s1, t6          # s1 = temp

    # Store the swapped values back into the array
    sw s0, 0(t4)
    sw s1, 0(t5)
	
continue:
    addi t1, t1, 1
    blt t1, t2, inner_loop  # j < n - i - 1

    j outer_loop

#####################################################
# print
#####################################################
print:
	li a7, 11 
    li a0, '\n'
    ecall
	mv a6, s7
	li t0, 0

loop:
	addi t0, t0, 1

print_values:
    slli t4, t0, 2
    add t4, t4, a6
    lw a0, -4(t4)

    li a7, 1       
    ecall

    li a7, 11
    li a0, '\n' 
    ecall

    beq t0, a1, end
    j loop

# all good things come to an end
end:
    li a7, 93
    ecall
    li a7, 9
