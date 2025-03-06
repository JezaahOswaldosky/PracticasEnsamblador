section .text 
	global _start

_start: 
	; Instruccion de corrimiento de a la izquierda 
	mov al, 220	; Almacenar dato 220 en reg al 
	shl al, 1	; Recorrer a la izq 1 bit 
	
	; Instruccion de corrimiento a la derecha 
	mov bl, 210	; Almacenar dato 210 en reg bl 
	shr bl, 1	; Recorrer a la der 1 bit

	; Instruccion de salida 
	mov rax, 60	; Instruccion de salida 
	mov rdi, 0	; xor eab, eab 
	syscall 	; int 0x80 


