.model small
.data
    msg1 db 'Enter String: $'
    msg2 db 'Lowercase String: $'
    buffer db 255 DUP('$') ; Buffer to store the input string

.code     
    mov ax, @data
    mov ds, ax

    ; Display prompt to enter a string
    mov ah, 09h
    lea dx, msg1
    int 21h

    ; Read a string from the user
    mov ah, 0Ah
    lea dx, buffer
    int 21h

    ; Convert the string to Lowercase
    mov si, offset buffer + 2 ; Skip the length byte in buffer
    convert_to_lowercase:
        mov al, [si]
        cmp al, '$' ; Check for end of string
        je print_lowercase_string
        cmp al, 'A'
        jb not_uppercase
        cmp al, 'Z'
        ja not_uppercase
        add al, 20h ; Convert lowercase to Lowercase
        mov [si], al
        not_uppercase:
        inc si
        jmp convert_to_lowercase

    print_lowercase_string:
    mov ah, 09h
    lea dx, msg2
    int 21h

    ; Display the converted string
    mov ah, 09h
    lea dx, buffer + 2 ; Skip the length byte in buffer
    int 21h

    ; Terminate the program
    mov ah, 4Ch
    int 21h
end
