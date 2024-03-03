.model small
.stack 100
.data
        dividend dw 0038h
        divisor db 09h
        quo db (?)
        rem db (?)
.code
        mov ax,@data
        mov ds,ax
        mov ax,dividend
        mov bl,divisor
        div bl
        mov quo,al
        mov rem,ah
        mov ah,4ch
        int 21h
end
