.data
	#defining variables
    start: .word 'K'
    newLine: .asciiz "\n"
    curr: .word '@'
    comma: .asciiz ", "
.text


#the main function that runs everything
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
        
        jal enter


        #printing last name
        
        #prints K
        li $v0, 4
        la $a0, start
        syscall

        #prints o
        lw $s1, start #load start var
        addi $s1, $s1, 36 #load to temp reginture
        sw $s1, curr #save val
        li $v0, 4 #load string prep
        la $a0, curr #load curr into a0 
        syscall
 
        #prints s
        lw $s1, curr
        addi $s1, $s1, 4
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #prints k
        lw $s1, curr
        addi $s1, $s1, -8
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #prints e
        lw $s1, curr
        addi $s1, $s1, -6
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall

        #prints l
        lw $s1, curr
        addi $s1, $s1, 7
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall

        #prints a
        lw $s1, curr
        addi $s1, $s1, -11
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall

        #prints ,
        li $v0, 4 
        la $a0, comma 
        syscall
        
        #prints N
        lw $s1, curr
        addi $s1, $s1, -19
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #prints e
        lw $s1, curr
        addi $s1, $s1, 23
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #prints l
        lw $s1, curr
        addi $s1, $s1, 7
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall

        #prints s
        lw $s1, curr
        addi $s1, $s1, 7
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #prints o
        lw $s1, curr
        addi $s1, $s1, -4
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #prints n
        lw $s1, curr
        addi $s1, $s1, -1
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall


    #end program so we can make class enter
    li $v0, 10
    syscall

    #make new line and is basically a class
    enter: 
        #print new line
        li $v0, 4
        la $a0, newLine
        syscall
        
        jr $ra

