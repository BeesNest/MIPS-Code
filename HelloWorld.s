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

        #This is where i print numbers
        #2
        addi $s0, $s0, 2
        li $v0, 1
        move $a0, $s0
        syscall

        #8
        addi $s0, $s0, 6
        li $v0, 1
        move $a0, $s0
        syscall

        #3
        addi $s0, $s0, -5
        li $v0, 1
        move $a0, $s0
        syscall
        
        #9
        addi $s0, $s0, 6
        li $v0, 1
        move $a0, $s0
        syscall
        
        #6
        addi $s0, $s0, -3
        li $v0, 1
        move $a0, $s0
        syscall
        
        #6
        addi $s0, $s0, 0
        li $v0, 1
        move $a0, $s0
        syscall
        
        #2
        addi $s0, $s0, -4
        li $v0, 1
        move $a0, $s0
        syscall
        
        jal prln


		li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string

        lw $t1, foobar
        
        jr $ra          # retrun to caller


