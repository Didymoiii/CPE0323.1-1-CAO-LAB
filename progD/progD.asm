dosseg
.model small
.stack 100h
.data
	prompt1 db 13,10,"Enter a string: $"
	prompt2 db 24 dup("$")
	prompt3 db 13,10,"$"
.code
main proc

	mov ax,@data
	mov ds,ax
	mov es,ax
	mov al,03h
	mov ah,00h
	int 10h

	mov dx,offset prompt1
	mov ah,09h
	int 21h

	mov byte ptr prompt2, 30
	mov dx,offset prompt2
	mov ah,0Ah
	int 21h

	mov dx,offset prompt3
	mov ah,09h
	int 21h

	mov si,02h
	lea dx,prompt2[si]
	mov ah,09h
	int 21h

	mov bl,prompt2[1]
	mov dx,offset[prompt2+2]
	mov ah,09h
	int 21h

	mov al,bl
	mov dh,2h
	mov dl,al
	mov bh,0
	mov ah,2h
	int 10h

	mov si,02h
	lea dx,prompt2[si]
	mov ah,09h
	int 21h

	mov ax,4c00h
	int 21h

main endp
end main