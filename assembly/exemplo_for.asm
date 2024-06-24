	.data

	.text
main:
	addi s1, zero, 100
inicializa:
	addi t0, zero, 10
	add  s0, zero, zero
condicao:
	beq s0, t0, fim
corpo:
	add s1, s1, s0
atualiza:
	addi s0, s0, 1
	j condicao
fim:
	nop
