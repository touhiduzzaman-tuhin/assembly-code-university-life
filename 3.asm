.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MAIN ENDP
END MAIN



