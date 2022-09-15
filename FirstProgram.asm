#Title: FirstProgram
#Author: Kaylem Brown-Malone
#Date Written: 8/25/2022
#Purpose: The purpose of this program is to show a few of the
#assembly language instruction

#Assembler directives
.text
#create a label and namis is main. A label is a memory address
	main:
		#code starts from here
		ori $t0, $zero, 45	#load $t0 with 45 decimal
		addi $t1, $zero, 5	#load $t1 with 5 decimal
		#now add and store the result in $t3
		add $t2, $t0, $t1
		
	exit:
	
.data 
	str1: .asciiz "Hello Assembly"