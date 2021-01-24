.MODEL SMALL
.STACK 100H
.DATA



.CODE

MAIN PROC
    
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    
    
    
    
    CMP AL,BL
    
    JG L1
    
    MOV AH,2
    
    MOV DL,AL
    INT 21H
    
    JMP END
    
    L1:
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
   
    
    DIS:
    
    MOV AH,2
    INT 21H
    
    
    
    END:
    MAIN ENDP
END MAIN