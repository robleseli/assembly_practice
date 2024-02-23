@ ARM Assembly Simple Calculator

.data
prompt1:    .asciz "Enter the first number: "
prompt2:    .asciz "Enter the second number: "
result_msg: .asciz "Result: %d\n"

.text
.global main

main:
    @ Prompt user for the first number
    mov r0, #0          @ File descriptor for stdin (0)
    ldr r1, =prompt1    @ Load the address of the prompt message
    bl printf           @ Print the prompt
    mov r0, r1          @ Store the address of input buffer
    bl scanf            @ Read the input from the user
    mov r2, r1          @ Store the first number in r2

    @ Prompt user for the second number
    mov r0, #0          @ File descriptor for stdin (0)
    ldr r1, =prompt2    @ Load the address of the prompt message
    bl printf           @ Print the prompt
    mov r0, r1          @ Store the address of input buffer
    bl scanf            @ Read the input from the user
    mov r3, r1          @ Store the second number in r3

    @ Perform addition
    add r4, r2, r3

    @ Display the result
    ldr r0, =result_msg    @ Load the address of the result message
    mov r1, r4              @ Move the result to r1 for printing
    bl printf               @ Print the result

    @ Exit the program
    mov r7, #1          @ System call number for exit (1)
    mov r0, #0          @ Exit with status 0
    svc 0               @ Execute the system call
