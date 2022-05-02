; Rafid Shaon
; Lab 6 (Problem 4) - 6(d)

.386
.model flat, stdcall
.stack 4096

ExitProcess proto dwExitCode:dword

.data
	arrayB WORD 1,2,3,4

.code
main4 proc
	mov ax, arrayB
	xchg ax, [arrayB + 4]
	xchg ax, [arrayB + 2]
	xchg ax, [arrayB + 6]
	mov arrayB, ax

	invoke ExitProcess, 0
main4 endp
end main4
