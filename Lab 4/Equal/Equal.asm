TITLE Equal.asm

MAIN SEGMENT
ASSUME	CS:MAIN, DS:MAIN, ES:MAIN, SS:MAIN
ORG 100H
START:
	MOV DL, 41H
	MOV DH, 41H
	CMP DH, DL
	JE TheyAreEqual
	JMP TheyAreNotEqual

TheyAreNotEqual:
	mov ah, 02h
	mov dl, 4eh
	int 21h
	int 20h

TheyAreEqual:
	mov ah, 02h
	mov dl, 59h
	int 21h
	int 20h

main ends
end start