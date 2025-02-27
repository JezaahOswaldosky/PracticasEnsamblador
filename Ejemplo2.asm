section .data 
	myNumber: db 100 

section .bss 
	var1: resb 1 

section .text 
	global _start 

_start: 
	;	Mpover el valor de MyNumber al registro RAX 
	mov rax, [myNumber]
	;Mover vaor de RAX a var1
	mov [var1], rax

	;Intruccion para salir del programa 
	mov rax, 60	; directiva de salida de programa 
	mov rdi, 0 
	syscall 
	
