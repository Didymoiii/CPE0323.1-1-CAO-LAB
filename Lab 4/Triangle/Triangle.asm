TITLE Triangle

.model small
.code
org 100h

start:
	mov cl, 1h
	mov bl, 0h
	mov ch, 4h

looprow:
	cmp ch, 0h
	jg loopcol
	jmp quit

loopcol:
	cmp bl, cl
	jl dsplay
	jmp next

dsplay:
	mov ah, 2h
	mov dl, '*'	;display asterisk
	int 21h
	inc bl
	jmp loopcol

next:
	mov dl, 0ah
	int 21h		;next line
	mov dl, 0dh
	int 21h

	mov bl, 0h
	dec ch
	inc cl
	jmp looprow

quit:
	int 20h

end start