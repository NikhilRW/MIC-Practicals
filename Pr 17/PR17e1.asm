.model small
.stack 100
.data
    a1 db 03h
    b1 db 03h
    c1 db 02h
    a_b db (?)
    y dw (?)
    z dw (?)

; Define a macro to square a number
square macro x
    mov al, x           ; Move the value of 'a' into AL
    mul al              ; Multiply AL by itself, result in AX
    aam
    mov x, al         ; Move the result back to 'a'
endm 

; Define a macro to add two numbers
addi macro x, y 
    mov al, x           ; Move 'x' into AL
    mov bl, y           ; Move 'y' into BL
    add al, bl          ; Add AL and BL, result in AL
    daa                 ; Decimal adjust after addition
endm 

.code
    mov ax, @data       ; Initialize DS with the address of the data segment
    mov ds, ax

    ; Square the values of a, b, and c
    square a1
    square b1
    square c1

    ; Add 'a' and 'b', then add the result to 'c'
    addi a1, b1
    mov a_b, al         ; Move the result to 'a_b'
    addi a_b, c1
    mov y, ax          ; Move the final result to 'y'

    ; Program termination
    mov ah, 4ch
    int 21h
end
