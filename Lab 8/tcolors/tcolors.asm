TITLE tcolors.asm
dosseg
.model small
.stack
.code
start:
	mov ax, 0b800h
	mov es, ax
	mov ah, 06h
	mov cl, 00h
	mov ch, 00h
	mov dl, 4fh
	mov dh, 15h
	mov bh, 40h
	int 10h

	mov ah, 06h
	mov cl, 00h
	mov ch, 0dh
	mov dl, 19h
	mov dh, 15h
	mov bh, 20h
	int 10h

	mov ah, 06h
	mov cl, 35h
	mov ch, 0dh
	mov dl, 4fh
	mov dh, 15h
	mov bh, 10h
	int 10h

	mov ax, 4c00h
	int 21h
end start