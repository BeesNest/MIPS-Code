.data
    start: .word 'A'
    newLine: .asciiz "\n"
    curr: .word '@'
    comma: .asciiz ", "
.text



main:   
 		
 		li $v0, 4
        la $a0, curr
        syscall

        addi $s0, $zero, 0 #zero
        
        li $v0, 1 #print int
        move $a0, $s0 #move the $s0 values to the $a0 
        syscall

		li $v0, 1
		li $a0, 8
		syscall

		li $v0, 1
		li $a0, 3
		syscall

		li $v0, 1
		li $a0, 9`
		syscall

		li $v0, 1
		li $a0, 6
		syscall

		li $v0, 1
		li $a0, 6
		syscall

		li $v0, 1
		li $a0, 2
		syscall



		li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string

        lw $t1, foobar
        
        jr $ra          # retrun to caller


