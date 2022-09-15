# Program File: Addtwo.asm
# Author: Kaylem Brown-Malone
# Date:   8/30/2022
#Purpose: Prompt user for 2 numbers, display the sum

.text
main:
	li $v0, 4
	la $a0, prompt1
	syscall #display prompt 1
	
	li $v0, 5
	syscall #read integer into $v0
	move $t0, $v0 #move input number into $t0
	
	li $v0, 4
	la $a0, prompt2
	syscall #display prompt 2
	
	li $v0, 5
	syscall #read integer into $v0
	move $t1, $v0 #move input number into $t1
	
	add $s0, $t1, $t0 #put the sum into $s0
	
	li $v0, 4
	la $a0, final
	syscall #display text before sum
	li $v0, 1
	move $a0, $s0
	syscall #display sum
	
	li $v0, 10
    	syscall #exit program
	
	
	
.data
	prompt1: .asciiz "Enter first integer: "
	prompt2: .asciiz "Enter second integer: "
	final: .asciiz "The sum of your numbers is: "