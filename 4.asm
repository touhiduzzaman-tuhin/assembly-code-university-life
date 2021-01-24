
.MODEL SMALL
.STACK 100H
.DATA

M DB "ENTER THE VALUE $"

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,BL
    
    MOV AX,0
    
    JNL END
    
    NEG AX
    
    END:
    MAIN ENDP
END MAIN
    



