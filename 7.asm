.MODEL SMALL
.STACK 100H
.DATA

M DB "CHARACTER$"
M2 DB 0AH,0DH,"NOT A CHARACTER$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,'A'
    JL TEST_2
    
    CMP BL,'Z'
    JG TEST_2
    
    JMP DIS
    
    TEST_2:
    CMP BL,'a'
    JL DIS_2
    
    CMP BL,'z'
    JG DIS_2
    
    DIS:
    MOV AH,9
    MOV DL,OFFSET M
    INT 21H
    
    DIS_2:
    MOV AH,9
    MOV DL,OFFSET M2
    INT 21H
    
    JMP END
    
    END:
    MAIN ENDP
END MAIN