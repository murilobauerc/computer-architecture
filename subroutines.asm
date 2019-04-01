.model small
.data
.code

teste2 proc
    mov AX,9 ; 0000 end 0
    RET     ; 0007 end 7

teste2 endp

teste1 pro
MOV AX,0  ; 0008 ret 1 byte / end 8
call teste2  ; 0015 end 15
RET          ; 0018
teste1 endp

.startup       ; 0019 supondo que startup tem 10 bytes
    call teste1  ; 0029
    mov AX,50   ; 0031
    
.exit
end