section .data 
	a: dq	10
	b: dq	100

section .text 
	global _start 

_start: 
	;	Mover datos de valores a y b a registros 
	mov rax, [a]	; Mover datos de a en RAX 
	mov rbx, [b]	; Mover datos de b en RBX 
	
	;	Restar datos de RAX con RBX 
	sub rax, rbx	; RAX-RBX--->RAX 
	
	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 


