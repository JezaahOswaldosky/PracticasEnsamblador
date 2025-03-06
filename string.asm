section .data 
	source_string: 	db "My Test String"
section .bss 
	destination_string: resb 15
section .text 
	global _start

_start: 
	cld 
	lea rsi, [source_string]
	lea rdi, [destination_string]
	movsb

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida  
	mov rdi, 0 	; xor ebx, ebx 
	syscall	; 	; int 0x80 
