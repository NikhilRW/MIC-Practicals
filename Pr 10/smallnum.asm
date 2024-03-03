.model small
.stack 100
.data
        array db 59h,38h, 85h,26h,54h
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
