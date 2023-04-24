	.data
	.text
main:
	addi t0, zero, 10
	addi t1, zero, 1
if:
	blt, s0, t0, true
	addi s1, zero, -1
	j fim

true:
	add s1, s1, t1
	
fim:
	nop