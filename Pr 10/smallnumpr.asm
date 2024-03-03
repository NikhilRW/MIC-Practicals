.model small
.stack 100
.data
        array db 12h,07h,25h,18h,02h
        smallest db 0ffh
.code
        mov ax,@data
        mov ds,ax
        LEA si, array
        mov cx, 05h
AGAIN:  mov al, smallest
        cmp [si],al
        jnc SKIP
        mov bl, [si]
        mov smallest, bl
SKIP:   inc si
        loop AGAIN
        mov ah, 4ch
        int 21h
end
