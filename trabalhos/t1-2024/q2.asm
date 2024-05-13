.data
	arr: .word 121, 505, 989, 1001, 0, 123, 456, 987, 12
	size: .word 9
	is_palindrome_msg: .string " is palindrome\n"
	not_palindrome_msg: .string " is not palindrome\n"

.text
############################################
# s1 = Base address of the array (vector)
# a1 = Size of address
# t0 = i
# t1 = data[i]
# t2 = tmp
# t3 = tmp_mod
# t4 = rv_Int
# t5 = 10, for operations
# t6 = 5, sizeof(data)/sizeof(int)
# a0 = print out message
# s2 = address of str
############################################

############################################
# main: 
# s1 = arr
# a1 = size
############################################
main:
    la s1, arr
    lw a1, size
    

for_loop:
    lw t1, 0(s1)
    bge t0, a1, end
    jal check_is_palindrome
    jal print_result
    addi t0, t0, 1
    addi s1, s1, 4
    j for_loop

check_is_palindrome:
    addi t2, t1, 0
    li t4, 0

while_loop:
    addi t5, x0, 10
    mul t4, t4, t5
    rem t3, t2, t5
    add t4, t4, t3 
    div t2, t2, t5
    bnez t2, while_loop 
    ret

print_result:
    mv a0, t1
	li a7, 1
    ecall
    bne t1, t4, print_not_palindrome_msg
    blez t1, print_not_palindrome_msg
    
print_is_palidrome_message:
    la a0, is_palindrome_msg
    li a7, 4
    ecall
    ret
    
print_not_palindrome_msg:
    la a0, not_palindrome_msg
    li a7, 4
    ecall
    ret

end:
    li a7, 93
    ecall
    li a7, 9

