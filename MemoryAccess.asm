##include <iostream>
#
#using namespace std;
#
#int val1 = 0x0a;
#int val2 = 0x0b;
#int result;
#string resultString = "Final answer is: ";
#string returnChar = "\n";
#
#int main(){
#
#result = val1 + val2;
#cout << resultString << result << returnChar;
# 
#}  

.data
	val1: 	.word 0x0a
	val2: 	.word 0x0b
	result:	.word 0x00
	.align 2
	resultString: 	.asciiz "Final answer is: "
	returnChar:	.asciiz "\n"
	
.text
	.globl main
main:
	lw $t0, val1
	lw $t1, val2
	add $t2, $t0, $t1 #add 2 values
	sw $t2, result #store in result
	
	la $a0, resultString
	li $v0, 4
	syscall #printing resultString
	
	lw $a0, result
	li $v0, 1
	syscall #printing result

exit:
    	li $v0, 10
    	syscall