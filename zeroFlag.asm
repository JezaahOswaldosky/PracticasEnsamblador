section .text 
	global _start 

_start: 
	mov rax, 12	; Almacenar en reg rax el num. 12
	mov rbx, 12	; Almacenar en reg rbx el num. 12
	sub rax, rbx	; Restar rax-rbx--> rax

	; Instruccion de salida del programa 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall		; int 0x80 


