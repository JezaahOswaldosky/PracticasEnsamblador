section .data 
	a: dq	10
	b: dq	20

section .text 
	global _start 

_start: 
	; Introducir datos en registros RAX y RBX 
	mov rax, [a]	; 
	mov rbx, [b]	;

	; Instruccion de suma de datos 
	add rax, rbx 	; Se suma rax+rbx---> y se guardar en rax 

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0 	; xor ebx, ebx 
	syscall 	; int 0x80 


