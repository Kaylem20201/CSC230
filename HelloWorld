# Program File: HelloWorld.asm
# Author: Kaylem Brown-Malone
# Date:   8/30/2022
# Purpose: First program, write Hello World on the output window.
#R-Format
#I-Format has two registers and it also has the constant as part of the instruction
#J-Format


.text 					# Define the program instructions.
main: 					# Label to define the main program.
	ori $v0, $zero, 0x04     	# Load 4 into $v0 to indicate a print string.
	la $a0, greeting 		# Load the address of the greeting into $a0.
	syscall 			# Print greeting.  The print is indicated by
					# $v0 having a value of 4, and the string to  
			
			
exit: 					# print is stored at the address in $a0. 
	li $v0, 10 			# Load a 10 (halt) into $v0.
	syscall 			# The program ends.


.data 					# Define the program data.
greeting: .asciiz "Hello World"  	# The string to print.
aWord: .word   0x07 			# A word occupies 4 bytes
aByte: .byte   0x01, 0x02, 0x03, 0x04 	# it is array
aHalf: .half  10			#half occupies 2 bytes