; Rafid Shaon
; Lab 4 (Problem 1)

.386
.model flat,stdcall
.stack 4096

ExitProcess proto,dwExitCode:dword

.code
main proc
	; AL = (AL – DL) + CL - BL
	mov	AH, 0			
	mov AL, 245 
	mov	BL, 41			
	mov	CL, 11
	mov	DL, 215		
	sub AL, DL
	add AL, CL
	sub AL, BL

	invoke ExitProcess,0
main ENDP
END main	