.model small
.stack 100
.data
        no1 db 57h
        no2 db 68h
        res dw (?)
.code
        mov ax,@data
        mov ds,ax
        mov al,no1
        mov bl,no2
        mul bl
        mov res,ax
        mov ah,4ch
        int 21h
end
