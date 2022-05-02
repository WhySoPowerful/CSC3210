; Rafid Shaon
; Class: CSC 3210
; Assignment #4 (Question 2)
; This program is meant to find the largest item in the array. (findLargestItem)

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data

Array   DWORD   10, 34, 2, 56, 67, -1, 9, 45, 0, 11


.code
main PROC

    MOV ESI, OFFSET Array       ; address of Array
    MOV EBX, TYPE Array         ; type of Array
    MOV ECX, LENGTHOF Array     ; length of Array
    CALL FindLargest            ; Call function to Find Largest item in array


INVOKE ExitProcess, 0   ; exit the program
main ENDP
FindLargest PROC

    MOV EAX, [ESI]      ; Largest = Array[0]
    ADD ESI, EBX        ; Array[1]
    DEC ECX             ; length--
    _For:
        CMP EAX, [ESI]  ; if (Largest >= Array[i])
        JGE _skipSwap   ; then skip
        MOV EAX, [ESI]  ; else Largest = Array[i]
    _skipSwap:
        ADD ESI, EBX    ; i++
        LOOP _For       ; repeat

ret
FindLargest ENDP
END main