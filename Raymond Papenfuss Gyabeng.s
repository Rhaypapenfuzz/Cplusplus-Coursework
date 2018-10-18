.data			# Assembly language instructions

at_sign:	.word 64

.text
.globl main

main: 			# My main
    lw $a0, at_sign
	  li $v0, 11
	  syscall   # Exit program
	  jr $ra		# return from main
