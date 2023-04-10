# GITHUB: omar-danasoury
# LINKEDIN: omar-eldanasoury
# CALCULATING CIRCLE'S AREA = r * r * pi

.data
pi: .double 3.1415926535897924
rMsg: .asciiz "Enter radius: "
msg: .asciiz "The circle area = "

.text
.globl main
main:

li $v0, 4
la $a0, rMsg
syscall

li $v0, 7
syscall # now $f0 has the radius

mul.d $f2, $f0, $f0

ldc1 $f4, pi
mul.d $f6, $f2, $f4

li $v0, 4
syscall

mov.d $f12, $f6
li $v0, 3
syscall

li $v0, 10
syscall
