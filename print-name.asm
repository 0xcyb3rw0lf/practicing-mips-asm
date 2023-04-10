# OMAR ELDANASOUEY
# GITHUB: omar-danasoury
# PRACTICING INPUT AND OUTPUT OF STRINGS
.data
msg: .asciiz 	"What is your name? (No More than 10 Letters)\n"
name: .SPACE  10 # Reserving 10 character spaces for the entered name
outMsg: .asciiz "Ramadan Mubarak, "

.text
.globl main
main:
# Print Msg
li $v0, 4
la $a0, msg
syscall

li $v0, 8 # Reads the name as String
la $a0, name
li $a1, 10
syscall
# now "name" has the address

li $v0, 4 # then we print the output message
la $a0, outMsg # move the out-msg to $a0 to be printed
syscall

la $a0, name # move load the address of name to $a0 to be printed
li $v0, 4
syscall

# Exit Program
li $v0, 10
syscall
