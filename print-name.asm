# OMAR ELDANASOUEY
# GITHUB: omar-danasoury
# PRACTICING INPUT AND OUTPUT OF STRINGS
.data
msg: .asciiz 	"What is your name?\n"
outMsg: .asciiz "Ramadan Mubarak, "

.text 
.globl main
main:
# Part 1: Reading String
li $v0, 8 # Reads the name as String
syscall
# now name is in register $a0
move $t0, $a0 # now $t0 has the name stored


