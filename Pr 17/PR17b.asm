.model small
.stack 100
.data
        a db 4
        b db 3
        c dw 5
        d dw 2
        a_b db (?)
        c_d db (?)
        z dw (?)
addi macro x,y
        mov al,x
        mov bl,y
        add al,bl
        daa
endm 
mult macro x,y 
        mov al,x
        mov bl,y
        mul bl
        aam
endm 
.code
        mov ax,@data
        mov ds,ax
        addi a,b
        mov a_b,al
        addi a,b
        mov c_d,al
        mult a_b,c_d
        mov z,ax
        mov ah,4ch
        int 21h
end
