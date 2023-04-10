# OMAR ELDANASOUEY
# GITHUB: omar-danasoury
# LINKEDIN: omar-eldanasoury
# PRACTICING SUM OF THREE INTEGERS

.data
enterMsg: 	.asciiz "Enter three integers:\n"
signedResultMsg: 	.asciiz "Signed Sum = "
# newline: 		.ascii "\n"
unsignedResultMsg: .asciiz "\n Unsigned Sum = "

.text
.globl main
main:
li $v0, 4
la $a0, enterMsg
syscall

li $v0, 5 # read integers
syscall
move $t0, $v0

li $v0, 5 # read integers
syscall
move $t1, $v0

li $v0, 5 # read integers
syscall
move $t2, $v0


addu $t4, $t0, $t1
addu $t5, $t2, $t4 # Now $t5 has the the unsigned sum

add $t6, $t0, $t1
add $t7, $t2, $t6 # Now $t7 has the signed sum

la $a0, unsignedResultMsg
li $v0, 4
syscall

move $a0, $t5
li $v0, 1
syscall

la $a0, signedResultMsg
li $v0, 4
syscall

move $a0, $t7
li $v0, 1
syscall

li $v0, 10
syscall
