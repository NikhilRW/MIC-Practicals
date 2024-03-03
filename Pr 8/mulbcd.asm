.model small
.stack 100
.data
        no1 db 09h
        no2 db 08h
        res dw (?)
.code
        mov ax,@data
        mov ds,ax
        mov al,no1
        mov bl,no2
        mul bl
        AAM
        mov res,ax
        mov ah,4ch
        int 21h
end
