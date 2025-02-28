section .data 
	a: db 3, 5, 7

section .text 
	global _start 

_start: 
	mov al, [a+1]	; Mover el valor de 5 en al

	;Instruccion de salida del programa 
	mov rax, 60	; 
	mov rdi, 0 
	syscall 

 
