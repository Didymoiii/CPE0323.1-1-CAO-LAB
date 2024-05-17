TITLE screen5.asm
.model small
.stack 100h
.code
start:
mov ax, 0b800h
mov es, ax
; start of color orange
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 00h ; Column low byte (0)
mov ch, 00h ; Column high byte (0)
mov dl, 4fh ; Destination column low byte (79)
mov dh, 18h ; Destination column high byte (24)
mov bh, 60h ; Set character attribute to color 60h (Yellow)
int 10h ; Invoke BIOS video services interrupt
; start of color football marks (black)
mov ah, 06h
mov cl, 0eh
mov ch, 03h
mov dl, 0fh
mov dh, 04h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 0eh
mov ch, 16h
mov dl, 0fh
mov dh, 16h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 10h
mov ch, 05h
mov dl, 11h
mov dh, 05h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 10h
mov ch, 15h
mov dl, 11h
mov dh, 15h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 12h
mov ch, 06h
mov dl, 13h
mov dh, 06h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 12h
mov ch, 14h
mov dl, 13h
mov dh, 14h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 14h
mov ch, 07h
mov dl, 15h
mov dh, 07h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 14h
mov ch, 13h
mov dl, 15h
mov dh, 13h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 16h
mov ch, 08h
mov dl, 17h
mov dh, 09h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 16h
mov ch, 0bh
mov dl, 17h
mov dh, 0ch
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 16h
mov ch, 0eh
mov dl, 17h
mov dh, 10h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 16h
mov ch, 12h
mov dl, 17h
mov dh, 12h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 2dh
mov ch, 00h
mov dl, 2eh
mov dh, 01h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 2fh
mov ch, 02h
mov dl, 30h
mov dh, 02h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 31h
mov ch, 03h
mov dl, 32h
mov dh, 03h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 31h
mov ch, 16h
mov dl, 32h
mov dh, 17h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 33h
mov ch, 04h
mov dl, 34h
mov dh, 04h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 33h
mov ch, 14h
mov dl, 34h
mov dh, 14h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 33h
mov ch, 16h
mov dl, 34h
mov dh, 16h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 35h
mov ch, 05h
mov dl, 36h
mov dh, 05h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 35h
mov ch, 07h
mov dl, 36h
mov dh, 07h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 35h
mov ch, 09h
mov dl, 36h
mov dh, 09h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 35h
mov ch, 0bh
mov dl, 36h
mov dh, 0ch
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 35h
mov ch, 12h
mov dl, 36h
mov dh, 13h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 37h
mov ch, 06h
mov dl, 38h
mov dh, 0ah
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 37h
mov ch, 0ch
mov dl, 38h
mov dh, 0fh
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 37h
mov ch, 11h
mov dl, 38h
mov dh, 11h
mov bh, 00h
int 10h
mov ah, 06h
mov cl, 22h
mov ch, 0ah
mov dl, 29h
mov dh, 0ah
mov bh, 0fh
int 10h
mov ah, 02h
mov bh, 00h
mov dh, 10
mov dl, 34
int 10h
; start of color white
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 00h ; Column low byte (0)
mov ch, 00h ; Column high byte (0)
mov dl, 02h ; Destination column low byte (2)
mov dh, 08h ; Destination column high byte (8)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 02h ; Column low byte (2)
mov ch, 00h ; Column high byte (0)
mov dl, 04h ; Destination column low byte (4)
mov dh, 07h ; Destination column high byte (7)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 04h ; Column low byte (4)
mov ch, 00h ; Column high byte (0)
mov dl, 06h ; Destination column low byte (6)
mov dh, 06h ; Destination column high byte (6)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 06h ; Column low byte (6)
mov ch, 00h ; Column high byte (0)
mov dl, 08h ; Destination column low byte (8)
mov dh, 05h ; Destination column high byte (5)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 08h ; Column low byte (8)
mov ch, 00h ; Column high byte (0)
mov dl, 0ah ; Destination column low byte (10)
mov dh, 04h ; Destination column high byte (4)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 0ah ; Column low byte (10)
mov ch, 00h ; Column high byte (0)
mov dl, 0eh ; Destination column low byte (14)
mov dh, 03h ; Destination column high byte (3)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 0eh ; Column low byte (14)
mov ch, 00h ; Column high byte (0)
mov dl, 10h ; Destination column low byte (16)
mov dh, 02h ; Destination column high byte (2)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 10h ; Column low byte (16)
mov ch, 00h ; Column high byte (0)
mov dl, 12h ; Destination column low byte (18)
mov dh, 01h ; Destination column high byte (1)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
; bottom left
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 00h ; Column low byte (0)
mov ch, 10h ; Column high byte (16)
mov dl, 02h ; Destination column low byte (2)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 02h ; Column low byte (2)
mov ch, 11h ; Column high byte (17)
mov dl, 04h ; Destination column low byte (4)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 04h ; Column low byte (4)
mov ch, 12h ; Column high byte (18)
mov dl, 06h ; Destination column low byte (6)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 06h ; Column low byte (6)
mov ch, 13h ; Column high byte (19)
mov dl, 08h ; Destination column low byte (8)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 08h ; Column low byte (8)
mov ch, 14h ; Column high byte (20)
mov dl, 0ah ; Destination column low byte (10)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 0ah ; Column low byte (10)
mov ch, 16h ; Column high byte (22)
mov dl, 0ch ; Destination column low byte (12)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 0ch ; Column low byte (12)
mov ch, 17h ; Column high byte (23)
mov dl, 10h ; Destination column low byte (16)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 10h ; Column low byte (16)
mov ch, 18h ; Column high byte (24)
mov dl, 16h ; Destination column low byte (22)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
; upper right
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 4dh ; Column low byte (77)
mov ch, 00h ; Column high byte (0)
mov dl, 4fh ; Destination column low byte (79)
mov dh, 08h ; Destination column high byte (8)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 4bh ; Column low byte (75)
mov ch, 00h ; Column high byte (0)
mov dl, 4dh ; Destination column low byte (77)
mov dh, 07h ; Destination column high byte (7)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 49h ; Column low byte (73)
mov ch, 00h ; Column high byte (0)
mov dl, 4bh ; Destination column low byte (75)
mov dh, 06h ; Destination column high byte (6)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 47h ; Column low byte (71)
mov ch, 00h ; Column high byte (0)
mov dl, 49h ; Destination column low byte (73)
mov dh, 05h ; Destination column high byte (5)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 45h ; Column low byte (69)
mov ch, 00h ; Column high byte (0)
mov dl, 47h ; Destination column low byte (71)
mov dh, 04h ; Destination column high byte (4)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 41h ; Column low byte (65)
mov ch, 00h ; Column high byte (0)
mov dl, 45h ; Destination column low byte (69)
mov dh, 03h ; Destination column high byte (3)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 3fh ; Column low byte (63)
mov ch, 00h ; Column high byte (0)
mov dl, 41h ; Destination column low byte (65)
mov dh, 02h ; Destination column high byte (2)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 3dh ; Column low byte (61)
mov ch, 00h ; Column high byte (0)
mov dl, 3fh ; Destination column low byte (63)
mov dh, 01h ; Destination column high byte (1)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
; bottom right
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 4dh ; Column low byte (77)
mov ch, 10h ; Column high byte (16)
mov dl, 4fh ; Destination column low byte (79)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 4bh ; Column low byte (75)
mov ch, 11h ; Column high byte (17)
mov dl, 4dh ; Destination column low byte (77)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 49h ; Column low byte (73)
mov ch, 12h ; Column high byte (18)
mov dl, 4bh ; Destination column low byte (75)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 47h ; Column low byte (71)
mov ch, 13h ; Column high byte (19)
mov dl, 49h ; Destination column low byte (73)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 45h ; Column low byte (69)
mov ch, 14h ; Column high byte (20)
mov dl, 47h ; Destination column low byte (71)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 43h ; Column low byte (67)
mov ch, 16h ; Column high byte (22)
mov dl, 45h ; Destination column low byte (69)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 3fh ; Column low byte (63)
mov ch, 17h ; Column high byte (23)
mov dl, 43h ; Destination column low byte (67)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
mov ah, 06h ; Set AH to 06h for setting character attribute
mov cl, 39h ; Column low byte (57)
mov ch, 18h ; Column high byte (24)
mov dl, 3fh ; Destination column low byte (63)
mov dh, 18h ; Destination column high byte (24)
mov bh, 0ffh ; Set character attribute to color 60h (white)
int 10h ; Invoke BIOS video services interrupt
; football word
mov ah,02
mov bh, 0fh
mov dl, 'F'
int 21h
mov ah,02
mov dl, 'o'
int 21h
mov ah,02
mov dl, 'o'
int 21h
mov ah,02
mov dl, 't'
int 21h
mov ah,02
mov dl, 'B'
int 21h
mov ah,02
mov dl, 'A'
int 21h
mov ah,02
mov dl, 'L'
int 21h
mov ah,02
mov dl, 'L'
int 21h
; Exit program
mov ah, 4ch
int 21h
end start