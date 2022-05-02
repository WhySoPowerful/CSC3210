; Rafid Shaon
; Class: CSC 3210
; Assignment #2 (Question 3)
; This program will create an uninitialized array of DWORD elements being updated with various values.

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
	z DWORD 3 DUP (?)		; creating given DWORD array
	x WORD 10				; initializing x, y, and r with their given values
	y WORD 15				; as 16-bit integers
	r WORD 4

.code
main3 proc
	mov eax, 0				; putting zeros in the register values
	mov ebx, 0
	mov ecx, 0
	mov edx, 0				

	mov ax, x				; load x in ax
	add ax, 130				; add 130 to x
	mov z, eax				; store x + 130 to z_0

	mov bx, y				; load y
	sub bx, x				; sub y - x
	add bx, ax				; calculate y - x + z_0
	mov z + 4, ebx			; z_1 = y - x + z_0

	mov cx, r				; load r
	add cx, x				; add r+x
	sub cx, bx				; calculate r + x - z_1
	mov z + 8, ecx			; z_2 = r + x - z_1

	invoke ExitProcess, 0
main3 endp
end main3