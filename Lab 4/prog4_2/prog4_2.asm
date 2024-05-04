TITLE prog4_2.asm

.model small
.stack 0100h
.data
.code

main proc
	mov ax, @data
	mov ds, ax
	mov cx, 001eh
	mov ah, 02h	;request display character
	mov dl, 'A'	;character to display
B:	int 21h		;call interrupt service
	inc dl
	loop B
	
	mov ax, 4c00h	;end
	int 21h
endp
end main