.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    
    SUB BL,AL
    
    ADD BL,48
    
    MOV DL,BL
    
    MOV AH,2
    INT 21H
    
    MAIN ENDP
END MAIN