; Rafid Shaon
; Lab 5 (Problem 1) - 5(a)

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.code
main1 PROC
	mov al, 20
	mov ax, 100
	mov eax, 1000
	add eax, 2
	sub al, 20

	INVOKE ExitProcess, 0
main1 ENDP
END main1