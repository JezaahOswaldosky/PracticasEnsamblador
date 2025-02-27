section .data 
	a: dq	10
	b: dq	20 

section .text 
	global _start 

_start: 
	mov rax, [a]	; Utilizar 64 bits para almacenar a en RAX 
	mov rbx, [b]	; Utilizar 64 bits para almancenar b en RBX 
	add rax, rbx	; Sumar datos de RAX en RBX 
	
	; Instruccion para salir del programa 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall 	; int 0x80 


