section .data 
	a: db 3
	b: db 5 

section .text 
	global _start 

_start: 
	mov al, [a]	; Mover el valor de a en al
	mov ah, [b]	; Mover el valor de b en ah 

	;	Intruccion de salida 
	mov rax, 60
	mov rdi, 0 
	syscall 


