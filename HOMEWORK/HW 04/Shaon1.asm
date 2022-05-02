; Rafid Shaon
; Class: CSC 3210
; Assignment #4 (Question 1)
; This program is a translation from a java code. (sumIfElseLoop)

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data

sum     SDWORD  ?
i       DWORD   ?
j       DWORD   ?
var1    SDWORD  ?
var2    SDWORD  ?
var3    SDWORD  ?

.code
main PROC

        MOV sum, 0      ; sum = 0
        MOV i, 0        ; i = 0
        MOV j, 12       ; j = 12
        MOV var1, 3     ; var1 = 3
        MOV var2, 3     ; var2 = 3
        MOV var3, 0     ; var3 = 0

        MOV EAX, var1   ; EAX = var1
        MOV EBX, var2   ; EBX = var2
        MOV ECX, var3   ; ECX = var3
        MOV EDX, i      ; EDX = i

        MOV EDX, 0      ; For ( i = 0 ;
        _For:
            CMP EDX, j  ; i < j ;
            JGE _EndFor

            _If:
                CMP EAX, ECX    ; if (var1 > var3)
                JLE _Else       ; then
                SUB EAX, EDX    ; var1 = var1 - i
                JMP _EndIf
            _Else:              ; else
                ADD ECX, EDX    ; var3 = var3 + i
            _EndIf:
            
            MOV sum, EAX        ; sum = var1
            ADD sum, EBX        ; sum = var1 + var2
            ADD sum, ECX        ; sum = var1 + var2 + var3

            DEC j               ; j--
            INC EDX             ; i++

            JMP _For            ; repeat
        _EndFor:

INVOKE ExitProcess, 0   ; exit the program
main ENDP
END main