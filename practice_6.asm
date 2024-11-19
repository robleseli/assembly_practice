1: 
    add     r0, #1      @ add 1 to r0 
    cmp     r0, #5      @ compare 0 to 5 
    beq     2f          @ go on if equal 
    b       1b 

    .data
explictnull:        .ascii      "String with null\0" 
datanull:           .asciz      "String with null" 
