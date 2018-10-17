.data
.text						# Assembly language instructions
main:						# My main

li $v0, 10				# system call code to exit program
	syscall					# Exit program
   
   