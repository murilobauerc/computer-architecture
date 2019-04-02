.model small
.data

lixo db 'O'
db 'L'
db 'A'
db '$'

.code

.startup
    lea dx, lixo
    mov ah,9
    int 21h
    
.exit
end