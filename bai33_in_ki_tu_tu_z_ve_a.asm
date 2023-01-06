.model small 
.stack 100h 
.data
str db 'z$'
str1 db '$'
.code
main proc
    mov ax,@data
    mov ds,ax 
    lap:
    mov ah,0Bh
    int 21h
  cmp al,00h
  jne thoat
  mov ah,09h
  lea dx,str1
  int 21h
  mov ah,09h
  mov dx,offset str
  int 21h
  cmp str,'a' 
  jna thoat
  dec str
  jmp lap
  thoat:
  mov ah,4ch
  int 21h