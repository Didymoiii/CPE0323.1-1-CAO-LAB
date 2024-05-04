TITLE ror.asm

.model small
.stack 100h
.data
	msg db 'Result in AX: $'
.code
main proc
	mov ax, @data
	mov ds, ax
	mov ax, 5		; Load the value of AX with a sample value, say 5
	shl ax, 1		; Multiply AX by 2 (2*AX)
	shl ax, 3		; Multiply AX by 8 (8*AX)
	add ax, ax		; Add 8*AX to 2*AX (8*AX + 2*AX)
	
	; Display the result
	mov dx, offset msg
	mov ah, 9
	int 21h
	
	; Display value of AX
	mov bx, ax
	mov cx, 10
	call display_ax

	; Exit the program
	mov ax, 4c00h
	int 21h
main endp
display_ax proc near
	mov ah, 0		; Display the value of AX
	mov al, bl
	mov bh, 0
	mov bl, 10
	div bl
	add ax, '0'
	push ax
	mov dl, ah
	mov ah, 2
	int 21h
	pop ax
	mov dl, al
	mov ah, 2
	int 21h
	ret
display_ax endp
end main