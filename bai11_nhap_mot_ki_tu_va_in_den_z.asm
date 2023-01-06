.model small
.stack 100h
.data
cach db "$"
.code
main proc
    mov ax,@data
    mov ds,ax
    int 21h
    mov bl,al 
    
    la:
    mov ah,02
    mov dl,bl
    int 21h
    mov ah,09
    lea dx,cach
    int 21h
    inc bl
    cmp bl,122
    jna la
    main endp
ret 
end