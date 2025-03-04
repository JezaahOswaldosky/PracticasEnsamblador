section .text 
	global _start 

_start: 
	mov al, 12	; Almancenar 12 en reg al 
	mov bl, 2	; Almacenar 2 en reg bl 
	add al, bl	; Aritmetica suma 

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall		; int 0x80 


