
        .data
msg:   .asciiz "Koskela, Nelson"
	.extern foobar 4

        .text
        .globl main



main:   
		li $v0, 1
		li $a0, 0
		syscall

		li $v0, 1
		li $a0, 2
		syscall

		li $v0, 1
		li $a0, 8
		syscall




		li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string

        lw $t1, foobar
        
        jr $ra          # retrun to caller
