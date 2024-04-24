	.data
A:	.word 	18
B:	.word   11
C:	.word	14
D:	.word 	6
S:	.word	10

	.text
	
main:
	lw	a0, A
	lw	a1, B
	lw	a2, C
	lw	a3, D
	
	sub	t0, a2, a1
	sub	t1, a0, a2
	mul	t1, t1, a3
	div	t2, t1, t0
#	sw	t2, S
	la	t3, S
	sw	t2, 0(t3)