# 1. Write a program that adds two numbers and stores the result in a register.

	.data
msg_read_number: 	.asciz "Enter a number: "
msg_result: 				.asciz "The result is: "
msg_exit: 					.asciz "\nEnd."

	.text
main:
  # Loads message
  la a0, msg_read_number  # load address of msg_read_number into a0
  li a7, 4                # print string
  ecall
  # Reads first number
  li a7, 5
  ecall
  mv s0, a0

  # Loads message again
  la a0, msg_read_number  # load address of msg_read_number into a0
  li a7, 4                # print string
  ecall

  # Reads second number
  li a7, 5
  ecall
  mv s1, a0

  # Adds numbers
  add a1, s0, s1

  # Prints result message
  la a0, msg_result
  li a7, 4
  ecall

  # Prints result
  mv a0, a1
  li a7, 1
  ecall

  # Finish program
	la a0, msg_exit
	li a7, 4
	ecall
	nop