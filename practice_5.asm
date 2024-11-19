add     r0, r1, r2      @ Add r1 and r2 and store in r0 
add     r1, r2          @ Add r1 and r2 and store in r1 

mov         r0, #'A'        @ load the value of A into r0 
ldr         r1, =outstr     @ load address of outstr into r1 
strb        r0, [r1]        @ store the first byte in r0 into the address 
                                @ starting at r1 
strb        r0, r1          @ Does not work  

.data 
outstr:     .ascii      "     \n" 
