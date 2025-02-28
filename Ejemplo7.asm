section .data 
	a: db	"ab"

section.text 
	global _start 

_start: 
	mov al, [a]	; Para mostrar solamente la a, se maneja como un arreglo 
	mov ah, [a+1]	; Para mostrar solamente b, se maneja el segundo valor del arreglo 


	;	Instruccion para salir del programa 
	mov rax, 60	; Directiva para salir 
	mov rdi, 0 
	syscall 


