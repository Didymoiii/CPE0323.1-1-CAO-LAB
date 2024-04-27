.model small
.stack 100h
.data
byte1 db 1 
byte2 db 0
word1 dw 1234h 
word2  dw 0
string db "Stressed!", 0dh, 0ah,"$"
;---- this is a comment 
 .code
 MAIN PROC
Mov ax, @data
Mov ds, ax

Mov dx, offset string
Mov ah, 9
Int 21h
Mov bx, offset string
Mov al, [bx] 
Mov ah, [bx+1]
Mov [bx], ah
Mov [bx+1],al
Mov ah,9
Mov dx, offset string
Int 21h
Mov ax, 4c00h
Int 21h
 Main endp
 End main
