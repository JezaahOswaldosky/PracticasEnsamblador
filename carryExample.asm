section .text 
	global _start 

_start: 
	mov al, 128	; Almacena 128 en reg al
	mov bl, 128	; Almacena 128 en reg bl
	add al, bl	; al+bl--->al

	; Instruccion de salida 
	mov rax, 60	; directiva de salida de programa 
	mov rdi, 0 	; xor rbx, rbx 
	syscall		; int 0x80 


