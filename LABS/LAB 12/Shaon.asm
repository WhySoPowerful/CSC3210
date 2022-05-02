; Rafid Shaon
; Lab 12

.386 
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
	var1 DWORD 100		; declararion of var1
	var2 DWORD 200		; declararion of var2 
	var3 DWORD 50		; declararion of var3
	var4 DWORD ?		; declararion of var4

.code
main proc
	mov eax, var1				; eax = var1
	; perform (var1 * var2)
	imul var2					; edx:eax = eax * var2 (signed multiplication)
	push eax					; save eax register to stack
	push edx					; save edx register to stack
	; perform (var3 * 5)
	mov eax, var3				; eax = var3
	mov ebx, 5					; ebx = 5
	imul ebx					; edx:eax = eax * var2 (signed multiplication)
	mov ebx, eax				; store the value in eax to ebx
	pop edx						; restore value from stack to edx for division operation
	pop eax						; restore value from stack to eax for division operation
	idiv ebx					; perform edx:eax/ebx and store the result in eax
	mov var4, eax				; store the result in eax to var4

	invoke ExitProcess, 0		; exit

main endp
end main
