.model small
.stack
.data
    line1 db 13,10,"Hello, What's your name? $"
    line2 db 13,10,"Hello, $"
    line3 db 13,10,"Congratulations! Your first program is working!$"
    buffer db 31,?,31 dup('$') ; Maximum length 30 characters for the name + 1 for null terminator
.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, line1    	; Display line1
    mov ah, 09h
    int 21h

    ; Read user's name
    lea dx, buffer
    mov ah, 0ah
    int 21h

    lea dx, line2    	; Display line2
    mov ah, 09h
    int 21h

    ; Display the entered name
    lea dx, buffer + 2 ; Offset 2 contains the length of the input
    mov ah, 09h
    int 21h

    lea dx, line3	; Display line3
    mov ah, 09h
    int 21h

    ; Exit the program
    mov ax, 4c00h
    int 21h
main endp
end main