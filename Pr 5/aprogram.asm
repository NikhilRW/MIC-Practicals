.model small
.stack 100
.data
        source db 01h,02h,03h,04h,05h
        desti db 11h,22h,33h,44h,55h
.code
        mov ax,@data
        mov ds,ax
        mov es,ax
        mov cx,05
        lea di,desti
        lea si,source
AGAIN:  mov al,[si]
        mov [di],al
        inc si
        inc di
        Loop AGAIN
        mov ah,4ch
        int 21h
end