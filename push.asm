section .text 
	global _start

_start: 
	push 0x11	; pushing 0x11 a la cima del stack 
	push 0x22	; push 0x22 a la cima del stack 

	pop rax	;Mover la cima del stack a rax 
	pop rbx	; mover la cima del stack a rbx 
	
	; Instruccion de salida 
	mov rax, 50	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 

