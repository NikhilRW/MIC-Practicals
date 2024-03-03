; Count Number Of 0's And 1's
; .model small
; .stack 100
; .data
;         mess db 13,10,"Enter A Number : $"
;         mess2 db 13,10,"1's : $"
;         mess3 db 13,10,"0's : $"
;         one_count db 00
;         zero_count db 00
; .code
;         mov ax,@data
;         mov ds,ax
;         mov cx,8
;         mov dx,offset mess
;         mov ah,09h
;         int 21h
;         mov ah,01h
;         int 21h
;         sub al,'0'
; again:  rcr al,1
;         jc oneno
; zerono: inc zero_count
;         jmp last
; oneno:  inc one_count
; last:   loop again
;         ; Display the count of 1's
;         mov dx, offset mess2
;         mov ah, 09h
;         int 21h
;         mov dl, one_count
;         add dl, '0'  ; Convert to ASCII
;         mov ah, 02h
;         int 21h

;         ; Display the count of 0's
;         mov dx, offset mess3
;         mov ah, 09h
;         int 21h
;         mov dl, zero_count
;         add dl, '0'  ; Convert to ASCII
;         mov ah, 02h
;         int 21h
;         mov ah,01h
;         int 21h
;         ; Exit
;         mov ah, 4ch
;         int 21h
; end


; Count Number Of 0's In Al Register
; .model small
; .stack 100
; .data
;         mess3 db 13,10,"0's : $"
;         zero_count db 00
; .code
;         mov ax,@data
;         mov ds,ax
;         mov cx,8
;         mov al,20h
; again:  rcr al,1
;         jnc zerono
;         jmp last
; zerono: inc zero_count
; last:   loop again
;         mov dx,offset mess3
;         mov ah,09h
;         int 21h
;         mov dl,zero_count
;         add dl, '0'  ; Convert to ASCII
;         mov ah,02h
;         int 21h
;         mov ah,01h
;         int 21h
;         mov ah,4ch
;         int 21h
; end

; Check D5 Bit Of BL Register
; .model small
; .stack 100
; .data
;         mess4 db 13,10,"D5 Bit Of BL : 1 $"
;         mess5 db 13,10,"D5 Bit Of BL : 0 $"
;         d5bit db (?)
; .code
;         mov ax,@data
;         mov ds,ax
;         mov cx,5
;         mov bl,20h
;         rcl bl,3
;         jnc zerono
;         jmp oneno
; oneno:  mov dx,offset mess4
;         mov ah,09h
;         int 21h
;         jmp last
; zerono: mov dx,offset mess5
;         mov ah,09h
;         int 21h
; last:   mov ah,01h
;         int 21h
;         mov ah,4ch
;         int 21h
; end