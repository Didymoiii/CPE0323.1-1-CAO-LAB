TITLE prog4_1.asm

dosseg
.model small
.stack 0100h
.data
.code

main proc
	mov ax, @data
	mov ds, ax
	mov cx, 001eh
	mov ah, 02h	;request display character
	mov dl, '*'	;character to display
A:	int 21h
	loop A
	
	mov ax, 4c00h	;end
	int 21h
endp
end main