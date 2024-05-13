.data

arr:    .word 0, 123456789, 12321, -878, -789
is_palindrome_msg:    .string " is palindrome\n"
not_palindrome_msg:    .string " is not palindrome\n"

.text

# t0 = i
# t1 = data[i]
# t2 = tmp
# t3 = tmp_mod
# t4 = rv_Int
# t5 = 10, for operations
# t6 = 5, sizeof(data)/sizeof(int)
# a0 = print out message
# s1 = address of arr
# s2 = address of str

main:
    la        s1, arr
    addi      t6, x0, 5
    
for_loop:
    lw        t1, 0(s1)
    bge       t0, t6, end
    jal       is_Palindrome
    jal       print_result
    addi      t0, t0, 1
    addi      s1, s1, 4 
    j         for_loop

is_Palindrome:
    addi      t2, t1, 0
    addi      t4, x0, 0 

while_loop:
    addi      t5, x0, 10
    mul       t4, t4, t5
    rem       t3, t2, t5
    add       t4, t4, t3 
    div       t2, t2, t5
    bne       t2, x0, while_loop  
    ret

print_result:
    add       a0, x0, t1           
    addi      a7, x0, 1            
    ecall                          
    bne       t1, t4, print_inp     
    blt       t1,x0 , print_inp    
    la        a0, is_palindrome_msg           
    addi      a7, x0, 4
    ecall                           
    ret
    
print_inp:
    la        a0, not_palindrome_msg
    addi      a7, x0, 4
    ecall
    ret

end:
    addi      a7, x0, 10
    ecall 