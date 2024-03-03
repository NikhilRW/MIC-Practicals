.model small
.stack 100
.data
        no1 dw 0702h
        no2 db 07h
        rem db (?)
        quo db (?)
.code
        mov ax,@data
        mov ds,ax
        mov ax,no1
        mov bl,no2
        AAD
        DIV bl
        mov quo,al
        mov rem,ah
        mov ah,4ch
        int 21h
end
