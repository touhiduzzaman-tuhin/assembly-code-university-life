.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV DL,'T'
    MOV AH,2
    INT 21H
    
     
    MOV DL,'U'
    MOV AH,2
    INT 21H
    
     
    MOV DL,'H'
    MOV AH,2
    INT 21H
    
     
    MOV DL,'I'
    MOV AH,2
    INT 21H
    
     
    MOV DL,'N'
    MOV AH,2
    INT 21H
    
     
    MAIN ENDP
END MAIN
    
    