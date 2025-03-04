section .text 
	global _start 

_start: 
	mov al, 120	; Almacernas 120 en registro de 8 bits
	mov rax, -130	; Almacenar -130 en registro de 8 bits

	; Instruccion de salida 
	mov rax, 60	; directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall		; int 0x80 


