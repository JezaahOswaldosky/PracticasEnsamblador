section .text 
	global _start 

_start: 
	mov al, 120	; Almacenar el 120 en registro de 8 bits al 
	mov al, 129	; Almacena el 129 en registro al de 8 bits 

	; Instruccion para salir 
	mov rax, 60	; Directiva de salida de programa 
	mov rdi, 0	; xor rbx, rbx 
	syscall		; int 0x80 


