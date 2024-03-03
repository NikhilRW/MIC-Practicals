.model small
.stack 100
.data
        array db 59h,38h, 85h,26h,54h
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