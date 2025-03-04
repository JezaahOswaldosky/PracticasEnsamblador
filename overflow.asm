section .data 
	a: db 5 
	b: db 7 

section .text 
	global _start 

_start: 
	mov al, [a]	; Almacenar dato de a en registro al de 8 bits 
	mov bl, [b]	; Almacenar dato de b en registro de 8 bits bl 
	add al, bl	; Sumar al+bl --> al 

	; Intruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall		; int 0x80 


