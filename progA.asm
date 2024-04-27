dosseg
.model small
.stack
.data
         prompt1 db 13,10,"Enter a character:$"
         prompt2 db 13,10,"The character you entered is:$"
.code
main proc
mov ax,@data
mov ds,ax

      lea dx,prompt1
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bl,al
      lea dx,prompt2
mov ah,09h
int 21h

mov dl,bl
mov ah,02h
int 21h
mov ax,4c00h
int 21h

main endp
end main

