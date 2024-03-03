.model small
.stack 100
.data
        no1 db 54h
        no2 db 45h
        no3 dw 1007h
        no4 db 05h
        diff db (?)
        sum db (?)
        prod dw (?)
        quo db (?)
        rem db (?)
addi macro a,b
        mov al,a
        mov bl,b
        add al,bl
        mov sum,al
        daa
endm 
subt macro a,b
        mov al,a
        mov bl,b
        sub al,bl
        mov diff,al
        das
endm 
mult macro a,b
        mov al,a
        mov bl,b
        mul bl
        aam
        mov prod,ax
endm 
divi macro x,y 
        mov ax,x 
        mov bl,y
        aad
        div bl
        mov quo,al
        mov rem,ah
endm 
.code
        mov ax,@data
        mov ds,ax
        addi no1,no2
        subt no1,no2
        mult no1,no2
        divi no3,no4
        mov ah,4ch
        int 21h
end
