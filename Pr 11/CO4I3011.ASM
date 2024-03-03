.model small
.stack 100
.data
    array db 07h,02h,09h,10h,06h ; Array to be sorted
.code
    mov ax, @data
    mov ds, ax
    mov bl, 05                    ; Outer loop counter (number of elements in array)

RELOAD:
    LEA si, array                 ; Load effective address of array into si
    mov cx, 05                    ; Inner loop counter (fixed number of elements in array)

AGAIN:
    mov al, [si]                  ; Load current element into al
    INC si                        ; Move to the next element
    CMP al, [si]                  ; Compare current and next elements
    JNC SKIP                      ; Jump to SKIP if current < next
EXCG:
    XCHG al, [si]                 ; Exchange current and next elements
    DEC si                        ; Move back to the current element
    XCHG al, [si]                 ; Exchange again to restore original order
    INC si                        ; Move to the next element

SKIP:
    loop AGAIN                    ; Repeat inner loop until cx becomes zero

    DEC bl                        ; Decrement outer loop counter
    JNZ RELOAD                    ; Repeat outer loop until bl becomes zero

    mov AH, 4ch                    ; DOS exit function
    int 21h                         ; Invoke DOS interrupt

end

