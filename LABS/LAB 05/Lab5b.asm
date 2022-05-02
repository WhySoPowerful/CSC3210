; Rafid Shaon
; Lab 5 (Problem 2) - 5(b)

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

; EAX = Xval - (Yval + Zval)

.data
	Xval SDWORD 26
	Yval DWORD 30
	Zval DWORD 40
.code
main2 PROC
; second term: (Yval + Zval)
	mov ebx, Yval
	add ebx, Zval
; sub the terms and store:
	sub Xval, ebx
	mov eax, Xval 

	INVOKE ExitProcess, 0
main2 ENDP
END main2