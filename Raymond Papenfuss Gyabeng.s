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
	syscall			#Another System call to print same integer 4
	
	li $v0, 11 		#Changing pointing system call code from int to character
	addi $a0, $a0, 6	#Addition to get newline character
	syscall
	
	addi $a0, $a0, 61	#Addition to get char G(value 71)
	syscall

	addi $a0, $a0, 50	#Addition to get char small y
	syscall
	
	sub $a0, $a0, 24	#Subtraction to get char small a
	syscall

	addi $a0, $a0, 1	#Addition to get char small b
	syscall	

	addi $a0, $a0, 3	#Addition to get char small e
	syscall	

	addi $a0, $a0, 9	#Addition to get char small n
	syscall
	
	addi $a0, $a0, -7	#Addition of -7 to get char small g
	syscall
	
	sub $a0, $a0, 59	#Subtraction of to get a comma
	syscall			#Call Operating system to perform operation

	sub $a0, $a0, 12	#Subtraction of to get space
	syscall		
	
	addi $a0, $a0, 50	#Addition to get char Capital R
	syscall

	addi $a0, $a0, 15	#Addition to get char a
	syscall

	  jr $ra		# return from main
