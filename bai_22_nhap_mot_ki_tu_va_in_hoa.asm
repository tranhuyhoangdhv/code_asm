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
    sub bl,32
    
    la:
    mov ah,02
    mov dl,bl
    int 21h
    mov ah,09
    lea dx,cach
    int 21h
    sub bl,1
    cmp bl,65
    jnb la
    main endp
exit:
mov ax,4ch
int 21h
ret 
end