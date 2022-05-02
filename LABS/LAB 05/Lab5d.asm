; Rafid Shaon
; Lab 5 (Problem 4) - 5(d)
; Calcultaing the size of the String

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data

myString byte "This is a very long string made by your instructor to test how $ works in this lab hope you will like it"
myString_length = ($ - myString)

.code
main4 PROC
	mov eax, 0
	mov al, myString_length
	
	
	INVOKE ExitProcess, 0
main4 ENDP
END main4