# # # # # # # # # # # # # # # # # # # # # # # # # 
# UFFS - Universidade Federal da Fronteira Sul
# Ciencia da Computacao
# Organizacao de Computadores - 2024.1
# Luciano Lores Caimi
# Alunos:
#   Debora Rebelatto - 1721101034
#   Jonathan Gotz Correa - 2121101052
# # # # # # # # # # # # # # # # # # # # # # # # #

.data
	# Menu
	menu_text: 		 		.string "\nMenu:\n0. Insere Inteiro\n1. Remove Por Indice\n2. Remove Por Valor\n3. Imprime Lista\n4. Estatisticas\n5. Sair do programa\n\nInsira sua escolha: "
	
	# Messages:
	# Errors
	msg_not_implemented: 	.string "\nNot implemented yet!\n"
	msg_invalid_option: 	.string "\nOpcao Invalida\n"
	
	# Info Prompt
	msg_insert_new_value: 	.string "\nDigite um novo valor para inserir na lista:\n"
	msg_remove_by_index: 	.string "\nDigite o index do numero a ser removido:\n"
	msg_remove_by_value: 	.string "\nDigite o valor do numero a ser removido:\n"
	
	# Statistics
	msg_num_elements: 		.string "\nQuantidade de elementos na lista: "
	msg_biggest_value: 		.string "\nMaior valor da lista: "
	msg_smallest_value:		.string "\nMenor valor da lista: "
	msg_total_added:   		.string "\nTotal de numeros adicionados: "
	msg_total_removed:		.string "\nTotal de numeros removidos: "
	msg_empty_list: 		.string "\nLista vazia\n"
	
	# Jumptable to map menu
    jumptable:
		.word insere_inteiro
        .word remove_indice
        .word remove_valor
        .word imprime_lista
        .word estatistica
        .word exit

	# Pointers to the head of the list and to new node
	list_head: 		.word 0
	new_node: 		.word 0, 0

	# Statistics variables
	listCount:    	.word 0	
	totalAdded:   	.word 0
	totalRemoved:	.word 0

	biggestValue: 	.word 0
	smallestValue:	.word 2147483647 

.text
initialize_list:
    la t0, list_head
    sw x0, 0(t0)

initialize_statistics:
    la t0, listCount
	sw x0, 0(t0)   			# listCount = 0
	
	la t0, totalAdded
	sw x0, 0(t0)   			# totalAdded = 0
	
	la t0, totalRemoved
	sw x0, 0(t0)   			# totalRemoved = 0
	
	la t0, biggestValue
	sw x0, 0(t0)   			# biggestValue = 0
	
	la t0, smallestValue
	li t1, 2147483647  		# Max int
	sw t1, 0(t0)   			# smallestValue = max int

##################################################################
# menu:
# Displays the menu to the user and reads input
##################################################################
menu:
	li a7, 4             
    la a0, menu_text  
    ecall  

    li a7, 5
	ecall

##################################################################
# menu_input_validation:
# Validates if the value is above 0 and not above 5
##################################################################
menu_input_validation:
    li t0, 1
    bltz a0, invalid_menu_option 
    li t0, 6
    bgt a0, t0, invalid_menu_option  

##################################################################
# branch_menu:
# branches the menu according to the jumptable
##################################################################
branch_menu:
    slli 	t0, a0, 2 
    la 		t1, jumptable
    add 	t0, t0, t1
    lw 		t0, 0(t0)
    jalr 	zero, t0, 0

##################################################################
# invalid_menu_option:
# Displays a message in case the option inserted is invalid
##################################################################
invalid_menu_option:
	li a7, 4
    la a0, msg_invalid_option
    ecall
    j menu

##################################################################
# insere_inteiro:
# should insert an integer vaue ordered in the list
# 	and update the statistic values
#
# Parametros:
#	a0 = posicao de memoria do ponteiro para o inicio da lista
#	a1 = valor a ser inserido
# Retorno:
#	a0: sucesso = 1
#		falha 	= -1
#
#	a1: sucesso = o indice da posicao inserida
#		falha 	= -1
##################################################################
insere_inteiro:
    read_value_insert:
        li a7, 4
        la a0, msg_insert_new_value
        ecall

        li a7, 5
        ecall
        mv t0, a0

    malloc:
        li a7, 9        # code to srbk
        li a0, 8        # 8 bytes of memory
        ecall
        bnez a0, malloc_success
        li a0, -1
        li a1, -1
        j insere_inteiro_end

    malloc_success:
        mv s0, a0           # ponteiro para o novo nodo alocado
        sw t0, 0(s0)        # valor de t0 = Valor do nodo sendo inserido

        la t1, list_head    # ponteiro para o endereço do head da lista
        lw t2, 0(t1)        # t2 recebe o endereço da head atual
        mv t3, x0           # ponteiro para o nodo anterior

    insert_loop:
        beqz t2, insert_at_end
        lw a0, 0(t2)                # a0 = nodo atual sendo comparado
        bge t0, a0, continue_search

        sw t2, 4(s0)            # Armazena o endereço do próximo nodo no novo nodo
        beqz t3, update_head    # se for o head, atualiza
        sw s0, 4(t3)            # armzena o endereço do novo nodo no próximo
        j update_insert_statistics

    continue_search:
        mv t3, t2
        lw t2, 4(t2)
        j insert_loop

    insert_at_end:
        sw x0, 4(s0)
        beqz t3, update_head
        sw s0, 4(t3)
        j update_insert_statistics

    update_head:
        sw s0, 0(t1)

##################################################################
# update_insert_statistics:
# When inserting a new value, update the statistics
##################################################################
update_insert_statistics:
    la t1, listCount
    lw t2, 0(t1)
    addi t2, t2, 1
    sw t2, 0(t1)

    la t1, totalAdded
    lw t2, 0(t1)
    addi t2, t2, 1
    sw t2, 0(t1)

    la t1, biggestValue
    lw t2, 0(t1)
    blt t0, t2, skip_biggest_update  
    sw t0, 0(t1)                 

skip_biggest_update:
    la t1, smallestValue
    lw t2, 0(t1)
    bgt t0, t2, skip_smallest_update 
    sw t0, 0(t1)

skip_smallest_update:
    li a0, 1            
    mv a1, t3         
    j insere_inteiro_end

insere_inteiro_end:
    j menu

##################################################################
# remove_indice:
# removes a value from the list through its index
# Parametros recebidos:
#   a0: a posicao de memoria do ponteiro para o inicio da lista;
#   a1: o indice do elemento da lista a ser removido;
# Retorno da funcao:
#   sucesso: o valor presente na posicao removida;
#   falha: -1 caso nao tenha sido possivel remover da lista;
##################################################################
remove_indice:
read_value_indice:
    li a7, 4
    la a0, msg_remove_by_index
    ecall

    li a7, 5
    ecall
    mv t0, a0

    la t1, list_head
    lw t2, 0(t1)
    beqz t2, fail_remove_indice

    mv t3, x0

remove_loop:
    beqz t0, found_node
    addi t0, t0, -1
    mv t3, t2
    lw t2, 4(t2)
    beqz t2, fail_remove_indice
    j remove_loop

found_node:
    lw t4, 4(t2)
    lw t5, 0(t2)
    beqz t3, update_head_remove_index
    sw t4, 4(t3)
    mv a0, t5
    j update_remove_statistics

update_head_remove_index:
    sw t4, 0(t1)
    mv a0, t5
    j update_remove_statistics

fail_remove_indice:
    li a0, -1
    li a1, -1
    j remove_indice_end

remove_indice_end:
    j menu

##################################################################
# update_remove_statistics
# When removing an value, update the statistics
##################################################################
update_remove_statistics:
    la t0, listCount
    lw t1, 0(t0)
    addi t1, t1, -1
    sw t1, 0(t0)

    la t1, totalRemoved
    lw t2, 0(t1)
    addi t2, t2, 1
    sw t2, 0(t1)

    la t1, listCount
    lw t1, 0(t1)
    beqz t1, empty_list_after_remove

    la t1, list_head
    lw t2, 0(t1)

update_smallest_value:
    lw t3, 0(t2)
    la t4, smallestValue
    sw t3, 0(t4)

find_last_node:
    lw t3, 4(t2)
    beqz t3, update_biggest_done_remove
    mv t2, t3
    j find_last_node

update_biggest_done_remove:
    lw t3, 0(t2)
    la t4, biggestValue
    sw t3, 0(t4)
    j menu

empty_list_after_remove:
    la t1, biggestValue
    sw x0, 0(t1)
    la t1, smallestValue    
    sw x0, 0(t1)
    j menu

##################################################################
# remove_valor:
# Parametros recebidos:
# a0: a posicao de memoria do ponteiro para o inicio da lista;
# a1: o valor a ser removido;  
# Retorno da funcao:  
#     em caso de sucesso: o indice do elemento removido;  
#     em caso de falha: -1 caso nao tenha sido possivel remover da lista;
# Funcionalidade: a funcao deve retirar o primeiro elemento com o valor informado presente nada lista;
##################################################################
remove_valor:
read_input_value:
    li a7, 4
    la a0, msg_remove_by_value
    ecall

    li a7, 5
    ecall
    mv t0, a0

    la t1, list_head
    lw t2, 0(t1) 
    beqz t2, fail_remove_valor

    lw a0, 0(t2)
    beq a0, t0, remove_head_valor

remove_value_loop:
    lw t3, 4(t2)
    beqz t3, fail_remove_valor
    lw a0, 0(t3)
    beq a0, t0, found_value

    mv t2, t3
    j remove_value_loop

found_value:
    lw t4, 4(t3)
    sw t4, 4(t2)
    mv a1, t3
    li a0, 1
    j update_remove_statistics

remove_head_valor:
    lw t3, 4(t2)
    sw t3, 0(t1)
    mv a1, x0
    li a0, 1
    j update_remove_statistics

fail_remove_valor:
    li a0, -1
    li a1, -1
    j remove_valor_end

remove_valor_end:
    j menu

##################################################################
# imprime_lista
# Parametros recebidos:  
# a0: a posicao de memoria do ponteiro para o inicio da lista;
# Retorno da funcao: a funcao nao possui retorno  
# Funcionalidade: a funcao deve mostrar na tela todos os elementos presentes na lista;
##################################################################
imprime_lista:
	la t1, list_head
	lw t2, 0(t1)
	mv t3, t2
	
check_empty:
    beqz t3, empty_list

print_loop:
	beqz t3, print_newline

	lw a0, 0(t3) 
	li a7, 1
	ecall

	li a0, 32
	li a7, 11
	ecall

	lw t3, 4(t3)  
	j print_loop
	
empty_list:
	li a7, 4
	la a0, msg_empty_list
	ecall
	j menu
	
##################################################################
# estatistica:
# prints the values to each recorded statistic
# Retorno da funcao: a funcao nao possui retorno
##################################################################
estatistica:
print_list_count:
	li a7, 4
	la a0, msg_num_elements
	ecall

	la a0, listCount
	lw a0, 0(a0)  
	li a7, 1
	ecall

print_total_added_items:
    li a7, 4
    la a0, msg_total_added
    ecall

    la t0, totalAdded
    lw a0, 0(t0)
    li a7, 1
    ecall
    
print_total_removed_items:
    li a7, 4
    la a0, msg_total_removed
    ecall

    la t0, totalRemoved
    lw a0, 0(t0)
    li a7, 1
    ecall

print_biggest_value:
    li a7, 4
    la a0, msg_biggest_value
    ecall

    la t0, biggestValue
    lw a0, 0(t0)      
    li a7, 1        
    ecall

print_smallest_value:
    li a7, 4
    la a0, msg_smallest_value
    ecall

    la t0, smallestValue 
    lw a0, 0(t0)
    li a7, 1
    ecall

print_newline:
	li a0, '\n'  
	li a7, 11
	ecall

	j menu
	
##################################################################
# exit:
#		bye
##################################################################
exit:
    li a7, 93
    ecall
