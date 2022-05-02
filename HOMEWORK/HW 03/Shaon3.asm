; Rafid Shaon
; Class: CSC 3210
; Assignment #3 (Question 3)
; This program is a translation of a java code to masm

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
	var1 DWORD 10
	var2 DWORD 11
	var3 DWORD 12

.code
main3 proc	
	mov eax, var1
	mov ebx, var2
	mov ecx, var3

	cmp eax, ebx		
	ja L1

	cmp ebx, ecx		
	jbe next

	L1:

		add eax, ebx	; var1 = var2
		add eax, ecx	; var1 = var2 + var3
		inc ebx			; var2++
		inc ecx			; var3++

	next:

		dec eax		; var1--
		dec ebx		; var2--
		dec ecx		; var3--
	
	invoke ExitProcess, 0
main3 endp
end main3
