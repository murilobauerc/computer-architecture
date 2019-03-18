;.model (definir o modelo de memoria) (ex: 64k pra memoria, 64k pra dados)
.model small 
.data 
     ; DB -> BYTE
     ; DW -> WORD
     
     ; A = 0 / B = 0 / X = 0
     a db 0
     b db 0     
     x dw 0
     
     
.code
.startup ; se inicia o codigo
    MOV a , 10
    MOV bl, a
    SUB bl, 10
    
    jz then  ; JZ = SALTA SE A ULTIMA OPERACAO ARITMETICA RESULTA EM 0   
             ; JG = SALTA SE MAIOR QUE
             ; JA = ABOVE THEN (0 > -1 RESULTA EM FALSO) POIS EH CONSIDERADO BINARIO
                
    jmp fim_se  ; JMP = SEMPRE SALTA
    
    then:
        MOV a,5
    
    fim_se:
        ADD a,1
    

.exit ; SO se responsabliza em encerrar o programa (ex: fechar arquivos...)
end