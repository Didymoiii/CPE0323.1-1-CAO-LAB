TITLE multiply.asm

.model small
.stack 100h

.data
    holder dw 0
    number dw 50
    i dw 0
    output_msg db "the result is: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 10
    mov bx, number
    mov ax, holder

loop_start:
    add ax, bx
    mov holder, ax
    inc i
    cmp i, 10
    jl loop_start

    mov dx, offset output_msg
    mov ah, 09h
    int 21h

    mov ax, holder
    call display_number

    mov ah, 4ch
    int 21h
main endp

display_number proc
    mov cx, 10
    mov bx, 10

digit_loop:
    mov dx, 0
    div bx
    add dl, '0'
    push dx
    dec cx
    test ax, ax
    jnz digit_loop

display_loop:
    pop dx
    mov ah, 02h
    int 21h
    loop display_loop
    ret
display_number endp

end main