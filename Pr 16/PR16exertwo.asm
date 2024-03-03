.model small
.stack 100
.data
        num db 07h
        one_count db 00
.code
        mov ax,@data
        mov ds,ax
        call find_one_count
        mov ah, 4ch
        int 21h
find_one_count proc near
        mov cx,8
        mov al,num
again:  rcr al,1
        jc oneno
        jmp last
oneno:  inc one_count
last:   loop again
        ret
find_one_count endp
end