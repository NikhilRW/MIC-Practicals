; Count Positive And Negative Numbers
; .model small
; .stack 100
; .data
;         array db 94h,56h,42h,31h,81h,85h,69h,73h,47h,32h
;         pos_count db 00h
;         neg_count db 00h
; .code
;         mov ax,@data
;         mov ds,ax
;         lea si,array
;         mov cx,10
; again:  mov al,[si]
;         rol al,1
;         jc negno
; posno: inc pos_count
;         jmp last
; negno:  inc neg_count
; last:   inc si
;         loop again
;         mov ah,4ch
;         int 21h
; end

; Check Wether Positive And Negative Number
; .model small
; .stack 100
; .data
;    mess1 db 13,10,"Enter No : $"
;    first_bit db (?)
;    posnum db 13,10,"Number Is Positive $"
;    negnum db 13,10,"Number Is Negative $"
; .code
;    mov ax, @data
;    mov ds, ax

;    mov dx, offset mess1
;    mov ah, 09h
;    int 21h

;    mov ah, 01h    
;    int 21h
;    sub al, '0'     
;    mov dl, al     
;    mov first_bit, dl

;    mov ah, 01h   
;    int 21h
;    sub al, '0'    
;    mov dl, al      

;    rcl first_bit,5
;    jc negno
; posno: 
;    mov dx, offset posnum
;    mov ah, 09h
;    int 21h
;    jmp wrong

; negno:  
;    mov dx, offset negnum
;    mov ah, 09h
;    int 21h

; wrong:  
;    mov ah, 01h
;    int 21h

;    mov ah, 4ch
;    int 21h
; end



; Total Positive Numbers
; .model small
; .stack 100
; .data
;         array db 94h,56h,42h,31h,81h,85h,69h,73h,47h,32h
;         pos_sum db 00h
; .code
;         mov ax,@data
;         mov ds,ax
;         lea si,array
;         mov cx,10
; again:  mov al, [si]
;         cmp al, 80h   
;         jnc posno           
; posno:  add byte ptr pos_sum,[si]
; last:   inc si
;         loop again
;         mov ah,4ch
;         int 21h
; end