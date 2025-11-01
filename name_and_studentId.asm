.model small 
.stack 100h
.data
    fname db "Zaki Mohammad Shahriar. $"
    sname db "241400030 $"
    newline db 0Dh,0Ah,'$'
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, fname 
    int 21h

    MOV AH, 9
    LEA DX, newline
    INT 21h
    
    mov ah, 9 
    lea dx, sname
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
end main
            





                                                                  