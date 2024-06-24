		.data
vector:		.word 	-5, 4, 2, -11, 9
	

		.text
main:
	la	a0, vector		# lê endereço do vetor
	li	a1, 0			# carrega indice_1
	li	a2, 1			# carrega indice_2
	jal	swap_vector		# chama função swap_vector
	
	la	a0, vector		# lê endereço do vetor
	li	a1, 3			# carrega indice_1
	li	a2, 0			# carrega indice_2
	jal	swap_vector		# chama função swap_vector	

end:
	nop
	li a7, 93
	ecall 	


##################################################################################################
# função: swap_vector
#   recebe a posição de memória de um vetor e dois indices deste,
#   então troca de posição os valores presentes nos indices 
# entrada: a0 - posicao inicial do vetor na memória
#	   a1 - indice 1
#	   a2 - indice 2
# saida: não retorna nenhum valor
##################################################################################################
swap_vector:
	slli a1, a1, 2 		# multiplica indice_1 por 4
	slli a2, a2, 2		# multiplica indice_2 por 4
	add  t0, a0, a1		# calcula base + deslocamento: t0 = &vector[0] + (indice_1 * 4)
	lw   a3, 0(t0)		# lê em a3 valor presente em vector[indice_1]
	add  t1, a0, a2		# calcula base + deslocamento: t1 = &vector[0] + (indice_2 * 4)
	lw   a4,  (t1)		# lê em a4 valor presente em vector[indice_2]
	sw   a3, 0(t1)		# grava em vector[indice_2] o valor que estava en vector[indice_1]
	sw   a4, 0(t0)		# grava em vector[indice_1] o valor que estava en vector[indice_2]
	ret			# retorna
	
	
	
	
	
	
	
	
	
	
