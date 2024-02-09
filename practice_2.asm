
ADR R0, Into_THUMB + 1; Generate branch target address
; and set bit 0 high - hence
; arrive in THUMB state.
BX R0 ; Branch and change to THUMB
; state.
CODE16 ; Assemble subsequent code as
Into_THUMB ; THUMB instructions
.
.
ADR R5, Back_to_ARM: Generate branch target to word
: aligned ;
address - hence bit 0
; is low and so change back to ARM
; state.
BX R5 ; Branch and change back to ARM
; state.
.
.
ALIGN ; Word align
CODE32 ; Assemble subsequent code as ARM
Back_to_ARM ; instructions
.
.
