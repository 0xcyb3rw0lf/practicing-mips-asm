# OMAR ELDANASOUEY
# GITHUB: omar-danasoury
# LINKEDIN: omar-eldanasoury
# SIMPLE FORMULA PROGRAMMING
.data
x: .HALF 20
y: .HALF 5
z: .HALF 10
w: .HALF 7

.text
.globl main
main:
# NOTE: all the values are saved in memory, so they must be loaded first
lh $t3, x
lh $t4, y
lh $t5, z
lh $t6, w

add $t0, $t3, $t4
add $t1, $t5, $t6
sub $t2, $t0, $t1

li $v0, 1
move $a0, $t2
syscall

# Exit Program
li $v0, 10
syscall
