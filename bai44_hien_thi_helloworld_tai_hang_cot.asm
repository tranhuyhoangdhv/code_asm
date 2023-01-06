.model smail
.stack 100h
.data
str db 'Hello World!'
hang db ?,'$'
cot db ?,'$'
.code
mov ax,@data
mov ds,ax
mov ah,01h
int 21h
sub al,30h
mov hang,al

mov ah,01h
int 21h
sub al,30h
mov cot,al

mov ah,02h
mov dl,cot
mov dh,hang
int 10h
mov ah,09h
lea dx,str
int 21h