.MODEL SMALL
.STACK 100h
.DATA
    A db 'ASCII Character Demo:',0DH,0AH,'$'
    newline db 0DH, 0AH, '$'
.CODE
MAIN PROC
    MOV AX, @DATA 
    MOV DS, AX

    MOV AH,9
    LEA DX, A
    INT 21h

    MOV AH, 9
    LEA DX, newline
    INT 21h

    MOV AH, 2
    MOV DL, 65
    INT 21h

    MOV AH, 2
    MOV DL, 66
    INT 21h

    MOV AH, 2
    MOV DL, 67
    INT 21h

    MOV AH, 2
    MOV DL, 68
    INT 21h

    MOV AH, 2
    MOV DL, 69
    INT 21h

    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN