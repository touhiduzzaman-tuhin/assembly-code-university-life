.MODEL SMALL
.STACK 100H
.DATA
                                 
M DB 0DH,0AH,"                           ********CALCULATOR**********             $"
M0 DB 0DH,0AH,"FOR ADDITION TYPE 1$"
M1 DB 0DH,0AH,"FOR SUBTRUCTION TYPE 2$"
M2 DB 0DH,0AH,"FOR MULTIPLICATIONTION TYPE 3$"
M3 DB 0DH,0AH,"FOR DIVISION TYPE 4$"
M4 DB 0DH,0AH,"CHOSE YOUR OPTION: $"
M5 DB 0DH,0AH,"ENTER A VALUE FOR ADDITION: $"
M6 DB 0DH,0AH,"ENTER ANOTHER VALUE FOR ADDITION: $"
M7 DB 0DH,0AH,"ENTER A VALUE FOR SUBTRUCTION: $" 
M8 DB 0DH,0AH,"ENTER ANOTHER VALUE FOR SUBTRUCTION: $"
M9 DB 0DH,0AH,"ENTER A VALUE FOR MULTIPLICATION: $"
M10 DB 0DH,0AH,"ENTER ANOTHER VALUE FOR MULTIPLICATION: $"
M11 DB 0DH,0AH,"ENTER A VALUE FOR DIVISION: $"
M12 DB 0DH,0AH,"ENTER ANOTHER VALUE FOR DIVISION: $"
M13 DB 0DH,0AH,"THE DECIMAL RESULT IS: $"
M14 DB 0DH,0AH,"INVALID INPUT.$"
M15 DB 0DH,0AH,"FOR ANOTHER CALCULATION TYPE 1$"
M16 DB 0DH,0AH,"TO EXIT TYPE 2 !$"
M17 DB 0DH,0AH,"                           *****THANK YOU*****       $"
M18 DB 0DH,0AH,"ENTER A VALID OPTION: $"
M19 DB 0DH,0AH,"$"
M20 DB 0DH,0AH,"$"


.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M
    INT 21H
    
    CALL NL
    CALL NL
    
    L1:
    CALL NL
    
    MOV AH,9
    LEA DX,M0
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M3
    INT 21H
    
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M4
    INT 21H
    
    
    
    CAL:       
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'
    JE AD
    
    CALL NL
    
    CMP BL,'2'
    JE SB 
    
    CALL NL
    
    CMP BL,'3'
    JE ML
    
    CALL NL
    
    CMP BL,'4'
    JE DV
           
    CALL NL
    
    MOV AH,9
    LEA DX,M18
    INT 21H
    
    
    JMP CAL
    
   
    
    AD:
    CALL NL
    
    MOV AH,9
    LEA DX,M5
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CALL NL   
    
    
    MOV AH,9
    LEA DX,M6
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CALL NL
    
    ADD BL,CL
    
    SUB BL,30H
    
    
    CMP BL,'9'
    JG L2
       
    
    CALL DR
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M15
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M16
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M4
    INT 21H
    
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'
    JE L1
    
    
    CALL TNX
    
    JMP EXIT
    
    
    SB:
    CALL NL
    
    MOV AH,9
    LEA DX,M7
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    
    CALL NL
    
    
    MOV AH,9
    LEA DX,M8
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    
    SUB BL,CL
    
    ADD BL,30H
    
    
    CMP BL,CL
    JL L3
       
    
    CALL DR
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M15
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M16
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M4
    INT 21H
    
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'
    JE L1
    
    
    CALL TNX
    
    JMP EXIT
    
    
    
    ML:
    CALL NL
    
    MOV AH,9
    LEA DX,M9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,30H
    MOV CL,AL
    MOV CH,0
    
    
    CALL NL
    
    
    MOV AH,9
    LEA DX,M10
    INT 21H
    
    MOV AH,1
    INT 21H
    
    
    SUB AL,30H
    MOV BL,AL
    MOV BH,0
    
    MOV AX,CX 
    
    MUL BX
    MOV CX,AX
    ADD CL,48
    
    
    
    CMP CL,'9'
    JG L4
       
    
    CALL DR
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV BL,CL
    
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M15
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M16
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M4
    INT 21H
    
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'
    JE L1
    
    
    CALL TNX
    
    JMP EXIT
     
    
    DV:
    CALL NL
    
    MOV AH,9
    LEA DX,M11
    INT 21H
    
    MOV AX,0
    MOV BX,0
    MOV CX,0
    MOV DX,0
    
    
    MOV AH,1
    INT 21H
    
    SUB AL,30H
    MOV CL,AL
    
    
    CALL NL
    
    
    
    MOV AH,9
    LEA DX,M12
    INT 21H
    
    MOV AH,1
    INT 21H
    
    
    SUB AL,30H
    
    
    MOV BL,AL
    
    MOV AX,CX 
    
    DIV BL
    MOV CX,AX
    ADD CL,30H
    

    
    CMP CL,BL
    JL L5
       
    
    CALL DR
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV BL,CL
    
    
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M15
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M16
    INT 21H
    
    CALL NL
    CALL NL
    
    
    MOV AH,9
    LEA DX,M4
    INT 21H
    
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'
    JE L1
    
    
    CALL TNX
    
    JMP EXIT
    
    
    NL:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    RET
    
    
    DR:
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M13
    INT 21H
    
    RET
    
    
    L2:
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M14
    INT 21H
    
    JMP AD
    
    
    L3:
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M14
    INT 21H
    
    JMP SB
    
    
    L4:
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M14
    INT 21H
    
    JMP ML
    
    
    L5:
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M14
    INT 21H
    
    JMP DV
    
    
    
    TNX:
    CALL NL
    CALL NL
    
    MOV AH,9
    LEA DX,M17
    INT 21H
    
    RET
    
    EXIT:
    MAIN ENDP
    END MAIN