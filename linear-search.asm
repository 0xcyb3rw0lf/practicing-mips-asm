# GITHUB: omar-danasoury
# LINKEDIN: omar-eldanasoury
# LINEAR SEARCH
.data
array: .half 1,2,3,4,5,6,7,8,9,10
found: .asciiz "Found"
notfound: .asciiz "Not Found"

.text
.globl main
main:
li $t0, 50 # value to search in the array
lh $t1, array # $t1 has the base address of the array
li $t2, 0 # $t2 contains the current index
li $t5, 10 # $t5 has the size of the array
loop:
	# get current element
	la $t3, 0($t1)
	seq $t4, $t3, $t0
	addiu $t1, $t1, 2
	addiu $t2, $t2, 1
	beq $t5, $t2, notFoundInArray # if we reached the end of the array; were added to prevent infinite loops
	beqz $t4, loop
	j foundInArray

notFoundInArray:
	li $v0, 4
	la $a0, notfound
	syscall
	j exit

foundInArray:
	li $v0, 4
	la $a0, found
	syscall


exit:
li $v0, 10
syscall
	
