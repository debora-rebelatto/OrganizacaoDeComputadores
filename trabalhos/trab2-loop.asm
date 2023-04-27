# Trabalho 2 - Loop
# Utilizando um loop, declare que x = 10 e
# enquanto x > 0, adicione x a z

# Exemplo em JavaScript
# let z = 0;        // initialize z to 0
# let x = 10;       // initialize x to 10

# while (x > 0) {
#     z += x;       // add x to z
#     x -= 1;       // decrement x by 1
# }

# console.log(z);   // print the value of z

.data
    z: .word 0      # initialize z to 0

.text
main:
    li s0, 10       # initialize x to 10
    lw t0, z        # usar load word para inizializar

loop:
    add t0, t0, s0      # add x to z
    addi s0, s0, -1     # decrement x by 1
    bgt s0, zero, loop  # loop while x > 0

print_result:
    mv a0, t0           # move the value of maior into a0 (the argument register)
    li a7, 1            # load system call number for printing an integer
    ecall               # make the system call

    jr ra               # return from subroutine
