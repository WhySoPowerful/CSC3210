; Rafid Shaon
; Class: CSC 3210
; Assignment #3 (Question 1)
; This program will use a loop to reverse the elements of the array

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
inputStr BYTE "A","B","C","D","E","F","G","H"

.code
main1 PROC
    mov esi, 0
    mov edi, 0
    mov eax, 0
    mov ebx, 0

    mov esi,OFFSET inputStr
    mov edi,OFFSET inputStr
    add edi,SIZEOF inputStr
    sub edi,TYPE inputStr
    mov ecx,LENGTHOF inputStr/2

        L1:

    mov al, [esi]
    mov bl, [esi + TYPE inputStr]
    xchg al,bl
    mov [esi],al
    mov  [esi + TYPE inputStr],bl
    add esi, 2
    cmp ecx, 0
      JZ again

    loop L1
    again:
    mov ecx,LENGTHOF inputStr

        L2:

    mov al,[esi]
    mov bl, [edi]
    xchg al,bl
    mov [esi],al
    mov  [edi],bl
    add esi, TYPE inputStr
    sub edi, TYPE inputStr
    cmp ecx, 0
    JZ print
    loop L2
    print:

    INVOKE ExitProcess,0
main1 ENDP
END main1
