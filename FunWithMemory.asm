#Name: FunWithMemory.asm
#Author: Kaylem Brown-Malone
#Description: This program shows the syntax of using
#the load/store instructions

.data
	aByte: .byte 0x12 #8 bits
	aHalf: .half 0x15 #16 bits
	aWord: .word 0x19 #32 bits
	bHalf: .half 0xab
	sumOfHalf: .word 0x00 #always initialize the numberic variables


.text
	lb $t0, aByte
	lh $t1, aHalf
	lw $t2, aWord
	
	#Process the data
	
	add $t1, $t1, $t1 #register addressing mode
	
	#store the result back in the memory
	sw $t1, sumOfHalf