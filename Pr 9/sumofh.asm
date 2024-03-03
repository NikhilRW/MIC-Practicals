.model small
.stack 100
.data
        no db 05h,06h,07h,08h,09h
        sum dw (?)
.code
        mov ax,@data
        mov ds,ax
        lea si,no
        mov as,0000h
        mov cx,05
AGAIN:  add al,[si]
        jnc SKIP
        add ah,01
SKIP:   INC si
        loop AGAIN
        mov sum,ax
        mov ah,4ch
        int 21h
end
