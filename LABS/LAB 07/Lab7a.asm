; Rafid Shaon
; Lab 7 (Problem 1) - 7(a)

.386
.model flat, stdcall
.stack 4096

ExitProcess proto dwExitCode:dword

.data
	Val1 SWORD 23
	Val2 SWORD -35
	Val3 SDWORD 4

.code
main1 proc
; Calculating for EBX = (-Val1 + Val2) + (Val3 * 3)
	mov ax, Val1	; 16-bit (SWORD)
	mov bx, Val2	; 16-bit (SWORD)
	mov ecx, Val3	; 32-bit (SDWORD)
	neg ax			; Changing Val1 to a negative number because of the equation
	add ax, bx		; (-23 + -35)

	add ecx, Val3
	add ecx, Val3	; Since 4 * 3 = 12, I'm adding Val3 to ecx two times
	movsx eax, ax
	add eax, ecx
	mov ebx, eax	; Moving the final answer to the EBX register
	; EBX = FFFFFFD2

	invoke ExitProcess, 0
main1 endp
end main1
