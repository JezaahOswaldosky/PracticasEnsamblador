section .text
	global _start
_start: 
	mov rax, 4	; Asignar 4 al registro RAX 
	mov rbx, rax	; Mover datos de RAX a RBX 
	
	; Instruccion de salida 
	mov rax, 60	; Direcgiva de salida 
	mov rdi, 0 
	syscall 
	
