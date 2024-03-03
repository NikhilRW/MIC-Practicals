.model small
.stack 100
.data
        no1 db 09h
        no2 db 08h
        res db (?)
.code
        mov ax,@data
        mov ds,ax
        mov al,no1
        mov bl,no2
        add al,bl
        DAA
        mov res,al
        mov ah,4ch
        int 21h
end
