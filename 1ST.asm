.MODEL SMALL
.STACK 100H
.DATA

M DB "TUHIN $"

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET M
    INT 21H
    
    MAIN ENDP
END MAIN


