section .text 
	global _start 

_start: 
	mov rax, 12 	; Almacenar num 12 en reg rax
	mov rbx, 10 	; Almacenar num 10 en reg rbx
	add rax, rbx	; rax+rbx--> rax 
	
	; Instruccion de salida del programa 
	mov rax, 60	; Directiva de salida 	
	mov rdi, 0 	; xor rbx, rbx
	syscall		; int 0x80

