.model small


.data 
a dw 6
b dw 0   
i dw 0

.code
.startup
      
mov ax, a
loop1:  nop
        mov bx, i         
        add b, bx ; Acumula-se o valor de B no reg BX 
        inc i     ; Incrementa I
        cmp i,ax
        jle loop1   ; Loop enquanto for menor ou igual 
      
      
.exit
end 
        
