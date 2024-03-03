.model small
.stack 100
.data
        a db 4
        b db 3
        c db 5
        d db 2
        a_b db (?)
        c_d db (?)
        z dw (?)
.code
        mov ax,@data
        mov ds,ax
        call addi1
        call addi2
        call mult
        mov ah,4ch
        int 21h
addi1 proc near
        mov al,a
        mov bl,b
        add al,bl
        mov a_b,al
        ret
addi1 endp 
addi2 proc near
        mov al,c
        mov bl,d
        add al,bl
        mov c_d,al
        ret
addi2 endp 
mult proc near
        mov al,a_b
        mov bl,c_d
        mul bl
        mov z,ax
        ret
mult endp 
end
