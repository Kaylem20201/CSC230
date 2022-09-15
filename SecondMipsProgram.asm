# File Name:  SecondMipsProgram.asm
# Name:   Kaylem Brown-Malone
# Date:   8/5/2022
# Desc/Purpose: This program performs the following equation. 
# x = (A - B) + (C + D)
# This is going to take three steps
# First, (A-B) 
# Then (C+D)
# Then add the results.

.text
    .globl main
main:
    li $t0, 5  # Load hard coded values (called immediate value) into $t0, $t1, $t3 and $t4
    li $t1, 2
    li $t3, 3
    li $t4, 4

    sub $t2, $t0, $t1 #(A-B), store in $t2
    add $t5, $t3, $t4 #(C+D), store in $t5
    add $t2, $t2, $t5 #adding results, storing in $t2

    # Make sure to exit cleanly
    li $v0, 10
    syscall