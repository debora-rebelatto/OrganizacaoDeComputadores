.data
	prompt: .string "Digite o valor de A:\n"
	promptB: .string "Digite o valor de B:\n"
	promptC: .string "Digite o valor de C:\n"
	is_triangle: .string "Os valores formam um triangulo!\n"
	is_not_triangle: .string "Os valores nao formam um triangulo!\n"
	buffer: .space 12

.text
read_a:
	la a0, prompt
	li a7, 4
	ecall
	
	li a0, 0
	la a1, buffer 
	li a2, 11
	li a7, 63
	ecall

	mv t0, a0
	
read_b:
	la a0, promptB
	li a7, 4
	ecall

	li a0, 0       
	la a1, buffer 
	li a2, 11
	li a7, 63       
	ecall

	mv t1, a0
	
read_c:
	la a0, promptC
	li a7, 4
	ecall
	
	li a0, 0       
	la a1, buffer 
	li a2, 11
	li a7, 63       
	ecall

	mv t2, a0

find_biggest:
	mv s0, t0   
	blt s0, t1, update_max_t1 
	blt s0, t2, update_max_t2 
	j find_sum
	
update_max_t1:
	mv s0, t1
	j find_sum
	
update_max_t2:
	mv s0, t2
	j find_sum

find_sum:
	add s1, t0, t1
	add s1, s1, t2
	sub s1, s1, s0

	bgt s1, s0, print_is_triangle
	j print_is_not_triangle
	
print_is_triangle:
	la a0, is_triangle
	li a7, 4
	ecall
	j exit

print_is_not_triangle:
	la a0, is_not_triangle
	li a7, 4
	ecall

exit:
	li a7, 93
	ecall
