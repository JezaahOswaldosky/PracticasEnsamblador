section .text 
	global _start 

_start: 
	mov al, 12	; Almacenar 12 a reg al 
	mov bl, 10	; Almacenar 10 a reg bl 
	xor al, bl 	; Operador logico xor 
	; Instruccion de salida 
	mov rax,60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall 	; int 0x80 

