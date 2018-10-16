# Raymond Papenfuss Gyabeng.s
#
# This is to Print out My name
#

        .data
msg:   .asciiz "Raymond Papenfuss Gyabeng"
	.extern foobar 4

        .text
        .globl main
main:   li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string
        lw $t1, foobar
        
        jr $ra          # return to caller
