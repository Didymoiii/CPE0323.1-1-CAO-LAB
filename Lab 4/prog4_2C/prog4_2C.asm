TITLE prog4_2C.asm

.MODEL SMALL
.STACK 100h
.DATA
    CX_VALUE DW 1, 5 DUP(?)

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    CALL PRINT

    MOV AH, 1
    INT 21h

    MOV AX, 4C00h
    INT 21h
MAIN ENDP

PRINT PROC
    MOV CX, CX_VALUE
LOOP_START:
    MOV AH, 02h
    MOV DL, '*'
    INT 21h

    INC CX
    CMP CX, 5
    JLE LOOP_START

    RET
PRINT ENDP
END MAIN