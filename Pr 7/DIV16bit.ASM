.model small
.stack 100
.data
        dividend dw 0001h,0005h
        divisor dw 9200h
        quo dw (?)
        rem dw (?)
.code
        mov ax,@data
        mov ds,ax
        mov dx,dividend
        mov ax,dividend+2
        mov bx,divisor
        div bx
        mov quo,ax
        mov rem,dx
        mov ah,4ch
        int 21h
end

