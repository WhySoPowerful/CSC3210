; Rafid Shaon
; Class: CSC 3210
; Assignment #2 (Question 2)
; This program will compute -(val3 + val1) + (-val4 - val2) + 3 for the ECX register.

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
	val1 SBYTE 12d				; initializing variable as signed 8-bit integer
	val2 SWORD 9d				; initializing variable as signed 16-bit integer
	val3 SDWORD 2d				; initializing variable as signed 32-bit integer
	val4 SBYTE 20d				; initializing variable as signed 8-bit integer

.code
main2 proc
	mov eax, 0h					; putting zeros in the register values
	mov ebx, 0h
	mov ecx, 0h
	mov edx, 0h

	mov ecx, val3				; computing -(val3 + val1)
	add cl, val1
	neg ecx

	mov dx, val2				; computing (-val4 - val2), because val4 is smaller I just did a swap in there positions
	neg dx
	sub dl, val4

	add ecx, edx				; computing (total of val3 and val1) + (total of val4 and val2)

	add ecx, 3d					; adding 3 to ecx register

	invoke ExitProcess, 0
main2 endp
end main2