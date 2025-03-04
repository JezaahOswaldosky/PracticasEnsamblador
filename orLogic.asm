section .text 
	global _start 

_start: 
	mov al, 12	; Almacenar 12 en reg al 
	mov bl, 10	; Almacenar 10 en reg bl 
	or al, bl	; Operador or de al y bl 
	; Instrucciones de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0 	; xor ebx, ebx 
	syscall		; int 0x80 


