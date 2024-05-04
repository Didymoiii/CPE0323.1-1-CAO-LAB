TITLE logic.asm

.model small
.stack 100h
.data
	myString db "Proud to be TIPians", "$"
.code
main proc
	mov ax, @data
	mov ds, ax
	mov bx, offset myString
LP1:
	mov dl, [bx]
	cmp dl, '$'
	je exit
	inc bx
	and dl, 11011111b
	mov ah, 02
	int 21h
	jmp LP1

Exit:
	mov ax, 4c00h
	int 21h
main endp
end main