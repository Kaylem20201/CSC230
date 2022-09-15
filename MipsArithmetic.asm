# File Name:  MipsArithmetic.asm
# Name:   Kaylem Brown-Malone
# Date:   8/6/2022
#main  // pseudo code
#{
#int r = prompt("Enter a value for x: ");
#int y = prompt("Enter a value for y: ");
#int z = 5 * x – 4*y; 

#print("The result is: " + z);
#}

.text

main:

#Get the input from the user 
    #prompt and load x
    li $v0, 4            #prompt for x need code = 4 in $v0
    la $a0, promptX
    syscall

    li $v0, 5            #returns the integer in $v0 
    syscall
    add $s0, $zero, $v0   #save it in $s0

    #prompt for y
    li $v0, 4
    la $a0, promptY
    syscall
    
    li $v0, 5            #returns the integer in $v0
    syscall
    add $s1, $zero, $v0   #save it in $s1
    
#Procss the inputs as follows
#int z = 5 * x – 4*y;

	mul $t0, $s0, 5 # 5*x
	mul $t1, $s1, 4 # 4*y
	sub $t2, $t0, $t1 #final z
    	
    	#Testing division
    	div $s0, $s1 # dividing $s0 by $s1
    	mflo $t1 # get the quotient from the lo register
    	mfhi $t2 # get the remainder from the hi register
    	
    	
    	li $v0, 4
    	la $a0, result
    	syscall #display "result" string
    	li $v0, 1 #"display integer" syscall
    	add $a0, $zero, $t2 #load "z" into argument register
    	syscall #display "z"
    	
	
    
    
Exit: 
    	li $v0, 10
    	syscall
    
.data
    promptX:    .asciiz    "\nEnter the value of x: "
    promptY:    .asciiz    "\nEnter the value of y: "
    quotient:   .asciiz       "\nThe quotient is :  "
    remainder:	.asciiz		"\nThe remainder is : "
    result:	.asciiz		"\nThe result is : "