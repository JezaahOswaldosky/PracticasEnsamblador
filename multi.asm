section .data 
	a: dq	5	
	b: dq	3

section .text 
	global _start 

_start: 
	; Movemos los datos a los registros RAX y RBX 
	mov rax, [a]	; Mover datos al registro RAX 
	mov rbx, [b]	; Mover datos al registros RBX 
	
	; Multiplicar RAX*RBX-->RAX 
	imul rbx	; Multiplicar rax con rbx y guardar en rax 

	; Instruccion de salida del programa 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0 	; xor rbx, rbx 
	syscall		; int 0x80 


