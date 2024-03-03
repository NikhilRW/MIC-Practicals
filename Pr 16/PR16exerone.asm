.model small
.stack 100
.data
        array db 12h,07h,25h,18h,02h,19h,23h,21h,12h,90h
        smallest db 0ffh
.code
        mov ax,@data
        mov ds,ax
        call find_smallest
        mov ah, 4ch
        int 21h
find_smallest proc near
        LEA si, array
        mov cx, 10
AGAIN:  mov al, smallest
        cmp [si],al
        jnc SKIP
        mov bl, [si]
        mov smallest, bl
SKIP:   inc si
        loop AGAIN
        ret
find_smallest endp
end
