MODEL SMALL
.STACK 100h
.data 
    VALUE db 'Enter a Character : $'
.CODE
MAIN PROC
    mov AX, @DATA
    mov DS, AX

    mov AH, 9
    LEA DX, VALUE
    INT 21h
    
    ; INP NITESI
    MOV AH, 1
    INT 21H

    MOV BL, AL

    ;PRINT A NEW LINE 
    MOV AH,2
    MOV DL, 0AH
    INT 21h
    MOV DL, 0AH
    INT 21h

    MOV AH, 2
    MOV DL, BL
    INT 21h

    ;PRINT A NEW LINE 
    MOV AH,2
    MOV DL, 0AH
    INT 21h
    MOV DL, 0AH
    INT 21h

    MOV AH, 2
    MOV DL, BL
    INT 21h

    ;PRINT A NEW LINE 
    MOV AH,2
    MOV DL, 0AH
    INT 21h
    MOV DL, 0AH
    INT 21h

    MOV AH, 2
    MOV DL, BL
    INT 21h

    ;PRINT A NEW LINE 
    MOV AH,2
    MOV DL, 0AH
    INT 21h
    MOV DL, 0AH
    INT 21h

    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN