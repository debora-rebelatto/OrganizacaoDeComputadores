.data
	vetor: .word 6, 4, 1, 8, 2 # Define vetor
	tamanho: .word 5 # define tamanho do vetor
	numero: .word 5 # número escolhido para fazer as comparações
	
.text
	la a0, vetor # carrega o vetor em a0
	lw a1, tamanho # carrega o tamanho em a1
	lw a2, numero # carrega o numero em a2
	
# a0 = vetor
# a1 = tamanho
# a2 = numero
# s0 = current
# t0 = t0 + 1 	[i]
# t1 = t1 + 1 	count 

loop:
	lw s0, 0(a0) # Recebe a primeira posição do vetor em s0
	ble s0, a2, update_min_count # compara s0 com a2 if(s0 < a2) goto update_min_count
	j update_loop # se não fizer o branch, pula para o update do loop e não atualiza a contagem

update_min_count:
	addi t1, t1, 1 # t1 += 1 Incrementa a contagem
	
update_loop:
	addi t0, t0, 1 # Incrementa o iterador do loop t0 += 1
	beq t0, a1, final # Encerre o programa se o iterador do vetor for igual ao tamanho do vetor if(t0 == a1) goto final
	addi a0, a0, 4 # Incrementa a posição do vetor em 4 bytes
	j loop # volta para o loop

final:
	mv a0, t1 # move para a0 o valor que estava temporariamente em t1 que é a contagem dos valores menores ao número escolhido
	
	li a7, 93
    ecall
    li a7, 9

