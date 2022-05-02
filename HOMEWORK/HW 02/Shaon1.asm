; Rafid Shaon
; Class: CSC 3210
; Assignment #2 (Question 1)
; This program will compute (val3 + val4) - (val2 - val1) - (5 / 3) * 7 for the EDX register.

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
	val1 SWORD 120h					; initializing variables as signed 16-bit integers
	val2 SWORD 39h
	val3 SWORD 20h
	val4 SWORD 27h

.code
main1 proc
	mov eax, 0h						; putting zeros in the register values
	mov ebx, 0h
	mov ecx, 0h
	mov edx, 0h

	mov dx, val3					; computing (val3 + val4) in dx register
	add dx, val4

	mov cx, val2					; computing (val2 - val1) in cx register and then subtracting it to dx register
	sub cx, val1
	
	neg cx							; since minus w/ minus happens it turns into a positive
	add dx, cx						; the operation changes because of the last line - computing (total of val3 and val4) + (total of val2 and val1)

	sub edx, ((5d / 3d) * 7d)		; computing (5 / 3) * 7 and then subtracting it to edx register

	invoke ExitProcess, 0
main1 endp
end main1