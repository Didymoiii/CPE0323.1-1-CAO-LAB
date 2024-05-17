TITLE fcolors.asm
.model small
.stack 100h
.code
start:
	mov ax, 0b800h
	mov es, ax

	; Set Light Blue background
	mov ah, 06h
	mov cl, 00h
	mov ch, 00h
	mov dl, 13h
	mov dh, 18h
	mov bh, 17h
	int 10h

	; Light Blue word
	mov ah, 02
	mov bh, 0
	mov dh, 11
	mov dl, 4
	int 10h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'L'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'i'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'g'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'h'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 't'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, ' '
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'B'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'l'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'u'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'e'
	int 21h

	; Set Yellow background
	mov ah, 06h
	mov cl, 13h
	mov ch, 00h
	mov dl, 27h
	mov dh, 18h
	mov bh, 60h
	int 10h

	; Yellow word
	mov ah, 02
	mov bh, 0
	mov dh, 11
	mov dl, 26
	int 10h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'Y'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'e'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'l'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'l'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'o'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'w'
	int 21h

	; Set Magenta background
	mov ah, 06h
	mov cl, 27h
	mov ch, 00h
	mov dl, 3bh
	mov dh, 18h
	mov bh, 50h
	int 10h

	; Magenta word
	mov ah, 02
	mov bh, 0
	mov dh, 11
	mov dl, 45
	int 10h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'M'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'a'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'g'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'e'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'n'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 't'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'a'
	int 21h

	; Set Cyan background
	mov ah, 06h
	mov cl, 3bh
	mov ch, 00h
	mov dl, 4fh
	mov dh, 18h
	mov bh, 30h
	int 10h

	; Cyan word
	mov ah, 02
	mov bh, 0
	mov dh, 11
	mov dl, 67
	int 10h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'C'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'y'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'a'
	int 21h

	mov ah, 02
	mov bh, 0fh
	mov dl, 'n'
	int 21h

	; Exit program
	mov ah, 4ch
	int 21h
end start