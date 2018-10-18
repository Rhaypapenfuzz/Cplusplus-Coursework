.data			#Data declaration section

at_sign:	.word 64

.text			# Assembly language instructions
.globl main

main: 			# My main
   	  lw $a0, at_sign
	  li $v0, 11		#system call code for printing character
	  syscall   		#Call Operating system to perform operation
	  
	  li $v0, 1		#system call code for printing integer
	addi $a0, $a0, -64	#Addition to get integer 0
	syscall
	
	addi $a0, $a0, 2	#Addition to get integer 2
	syscall
	
	addi $a0, $a0, 6 	#Addition to get integer 8
	syscall
	
	sub $a0, $a0, 2		#Subtraction to get integer 6
	syscall
	
	sub $a0, $a0, 2		#Subtraction to get integer 4
	syscall
	
	sub $a0, $a0, 2		#Subtraction to get integer 2
	syscall
	
	addi $a0, $a0, 2	#Addition to get integer 4
	syscall
	  jr $ra		# return from main
