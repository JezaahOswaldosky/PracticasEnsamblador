section .text 
	global _start

_start: 
	mov al, 2	; Almacenar el 2 en rd al 
	not al		; Operador not(al)--->al 
	
	; Instruccion de salida 
	mov rax, 60	; Directiva de salida eax, 1
	mov rdi, 0	; xor eax, eax 
	syscall 	; int ox80 


