.data
	string1: .asciiz "Hello World"
	string2: .ascii "Hello World"
	num1: .byte 0xab
	string3: .asciiz "Why is this printing?"

#we did not learn so far any instructio that loads a word from the
#static data segment into a register
#load/store instruction
#lw is used to load a word (4 byte) from the memory into a register
#sw (store word) is used to store a word from a register into the static
#data segment

.text
# Things that don't work. Why
	la $a0, string2
	li $v0, 4
	syscall
	li $v0, 10
	syscall 