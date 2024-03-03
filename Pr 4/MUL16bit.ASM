.model small
.stack 100
.data
        no1 dw 1234h
        no2 dw 0025h
        res dw 2 DUP (?)
.code
        mov ax,@data
        mov ds,ax
        mov ax,no1
        mov bx,no2
        mul bx
        mov res,ax
        mov ah,4ch
        int 21h
end
