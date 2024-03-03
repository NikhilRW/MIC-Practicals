.model small
.stack 100
.data
        no1 db 07h
        no2 db 07h
        no3 dw 0107h
        no4 db 05h
        diff db (?)
        sum db (?)
        prod dw (?)
        quo db (?)
        rem db (?)
.code
        mov ax,@data
        mov ds,ax
        call addi
        call subt
        call mult
        call divi
        mov ah,4ch
        int 21h
addi proc near
        mov al,no1
        mov bl,no2
        add al,bl
        daa
        mov sum,al
        ret
addi endp 
subt proc near
        mov al,no1
        mov bl,no2
        sub al,bl
        das
        mov diff,al
        ret
subt endp 
mult proc near
        mov al,no1
        mov bl,no2
        mul bl
        aam
        mov prod,ax
        ret
mult endp 
divi proc near 
        mov ax,no3
        mov bl,no4
        aad
        div bl
        mov quo,al
        mov rem,ah
        ret
divi endp 
end
