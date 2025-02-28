section .data 
	a: dw	10	; Tamano de 2 bytes (word) 
	b: dd	500 	; Tamano de 4 bytes (double word)

section .text 
	global _start 

_start: 
	mov ax, [a]	; Mover los datos de a en el reg AX 
	mov ebx, [b]	; Mover los datos de b en el reg EBX
	
	;	Instruccion de salida 
	mov rax, 60 
	mov rdi, 0 
	syscall 




