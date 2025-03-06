section .data 
	var1:	db "Test String"

section .bss 
	var2: 	resb 15 

section.text 
	global _start 

_start: 
	cld 
	mov rcx, 11
	lea rsi, [var1]
	
	lea rdi, [var2]
	rep movsb 

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 


