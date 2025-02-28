section .data 
	a: db 	"ab"

section .text 
	global _start 

_start: 
	mov ax, [a]	; Mover el valor de ab en el reg AX 
	
	;	Instruccion de salir del programa 
	mov rax, 60 	; Directiva para salir del programa 
	mov rdi, 0 
	syscall 	; Identico al int 0x80 


