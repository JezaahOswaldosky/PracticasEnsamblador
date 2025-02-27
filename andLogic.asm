section .text 
	global _start 

_start: 
	mov al, 12	; Almancer num 3 en reg al 
	mov bl, 10	; Almacenar num 5 en reg bl 
	and al, bl	; Operador and 

	; Instruccion de salida 
	mov rax, 60	; Directiva de salir 
	mov rdi, 0 	; xor ebx, ebx 
	syscall 	; int 0x80 

