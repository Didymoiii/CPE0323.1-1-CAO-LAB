.model small
.stack 100h
.data
	byte1 db 1
	byte2 db 0
	word1 dw 1234h
	word2 dw 0
	string db "Stressed!", 0dh, 0ah,"$"

.code
MAIN PROC

	Mov ax, @data
	Mov ds, ax
	Mov dx, offset string
	Mov ah, 9
	Int 21h

	Mov bx, offset string
	Mov al, [bx]
	Mov ah, [bx+8]
	Mov [bx], ah
	Mov [bx+8],al
	Mov al, [bx+1]
	mov ah, [bx+7]
	mov [bx+1], ah
	mov [bx+7], al
	mov al, [bx+2]
	mov ah, [bx+6]
	mov [bx+2], ah
	mov [bx+6], al
	mov al, [bx+3]
	mov ah, [bx+5]
	mov [bx+3], ah
	mov [bx+5], al
	Mov ah,9
	Mov dx, offset string
	Int 21h

	Mov ax, 4c00h
	Int 21h

Main endp
End main