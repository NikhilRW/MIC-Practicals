;.model small
;.stack 100
;.data
;        array db 94h,56h,42h,31h,81h,85h,69h,73h,47h,32h
;        even_count db 00h
;        odd_count db 00h
;.code
;        mov ax,@data
;        mov ds,ax
;        lea si,array
;        mov cx,10
;again:  mov al,[si]
;        ror al,1
;        jc oddno
;evenno: inc even_count
;        jmp last
;oddno:  inc odd_count
;last:   inc si
;        loop again
;        mov ah,4ch
;        int 21h
;end

;.model small
;.stack 100
;.data
;        mess1 db 13,10,"Enter No : (0-9) $"
;        evennum db 13,10,"Number Is Even $"
;        oddnum db 13,10,"Number Is Odd $"
;.code
;        mov ax,@data
;        mov ds,ax
;        mov dx,offset mess1
;        mov ah,09h
;        int 21h
;        mov ah,08h
;        int 21h
;        mov dl,al
;        mov ah,02h
;        int 21h
;        AND al,0fh
;        cmp al,09h
;next:   jnc wrong
;        rcr al,1
;        jc oddno
;evenno: mov dx,offset evennum
;        mov ah,09h
;        int 21h
;oddno:  mov dx,offset oddnum
;        mov ah,09h
;        int 21h
;wrong:  mov ah,01h
;        int 21h
;        mov ah,4ch
;        int 21h
;end



; .model small
; .stack 100
; .data
;     array db 94h,56h,42h,31h,81h,85h,69h,73h,47h,32h
;     odd_sum dw 0000h
; .code
;     mov ax, @data
;     mov ds, ax
;     lea si, array
;     mov cx, 10
;     mov ax,0000h

; again:
;     mov al, [si]
;     rcr al, 1
;     jc oddno
;     jmp last

; oddno:
;     mov al,[si]
;     add odd_sum, ax
; last:
;     inc si
;     loop again

;     mov ah, 4ch
;     int 21h
; end

