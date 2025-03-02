section .text 
	global _start 

_start: 
	; Instruccion del ciclo 
	mov rcx, 4	; Contador de ciclos 

	jmp myloop

etiqueta: 
	add rax, 1	; Sumar 1 al registro rax 

myloop: 
	loop etiqueta
	
	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 

