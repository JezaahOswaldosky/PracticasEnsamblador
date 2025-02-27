section .data 
myString: db "Hello"

section .text 
	global _start 

_start: 
	mov rax, myString	; Colocar la direccion de myString en RAX 
	mov rbx, [myString]	; Mover la informacion al registro RBX 
	
	;Salir del programa 
	mov rax, 60	; Directiva para salir del programa 
	mov rdi, 0	; lo mismo ue xor rbx, rbx 
	syscall		; Lo mismo que int 0x80 

	
