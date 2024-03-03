.model small
.stack 100
.data
        array db 12h,07h,25h,18h,02h
        largest db 00h
.code
        mov ax,@data
        mov ds,ax
        LEA si, array
        mov cx, 05h
AGAIN:  mov al, largest
        cmp [si],al
        jc SKIP
        mov bl, [si]
        mov largest, bl
SKIP:   inc si
        loop AGAIN
        mov ah, 4ch
        int 21h
end