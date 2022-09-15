# File Name:  ClearingShiftingBits.asm
# Name:   Kaylem Brown-Malone
# Date:   8/22/2022
#Load $t0 with 0xf0a4d724  
#Clear bits 0, 2, 3, and 31 of register $t0, leaving the other bits unchanged.
#Hint:  It does not matter what is in the register $t0; it is just that you want to clear these bits( maybe to turn off some LEDs). Also, bit numbering start from 0 to 31 ( A total of 32 bits). Display $t0 using syscall.
#Load $t1 with 0xa then multiply the contents of $t1 by 128 using logical shifting, leaving the result in $t1.
#Display the contents of $t1. 


main:

li  $t0, 0xf0a4d724
#Bit mask clearing bit 31, 3, 2, and 0 (0111...1111...0010)
andi $t0, $t0, 0x7ffffff2

#display text+result
la $a0, clearResult
li $v0, 4
syscall
or $a0, $t0, $zero
li $v0, 1
syscall

li $t1, 0xa
# x128 -> *2^7 -> <<7
sll $t1, $t1, 

#display text+result
la $a0, shiftResult
li $v0, 4
syscall
or $a0, $t1, $zero
li $v0, 1
syscall

Exit: 
    	li $v0, 10
    	syscall

.data
	clearResult:    .asciiz    "\nThe \"bit cleared\" value: "
	shiftResult:	.asciiz	   "\nThe \"bit shifted\" value: "

