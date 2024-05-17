TITLE password.asm

.model small
.stack
.data
	password db 'password12'
	buff db 20 DUP(?)
	prompt1 db 'Enter your password:$'
	prompt2 db 'Password is INCORRECT!$'
	prompt3 db 'Password is CORRECT!$'
.code
main proc
	mov ax, @data
	mov ds, ax

	lea si, password
	lea di, buff

	mov ah, 09h
	lea dx, prompt1
	int 21h

	mov cx, 10
	
user_input:
	mov ah, 07h
	int 21h

	mov [di], al
	inc di

	mov ah, 02h
	mov dl, '*'
	int 21h

	loop user_input

	lea si, password
	lea di, buff

	mov cx, 10

	mov bx, 0

counter:
	mov bl, [si]
	mov bh, [di]

	inc si
	inc di

	cmp bl, bh
	jne incorrect
	loop counter

	mov ah, 09h
	lea dx, prompt3
	int 21h
	
	jmp exit

incorrect:
	mov ah, 09h
	lea dx, prompt2
	int 21h

exit:
	mov ah, 4ch
	int 21h

main endp
end main