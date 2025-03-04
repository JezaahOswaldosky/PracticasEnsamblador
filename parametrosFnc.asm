section .text 
	global _start 
; Crear una funcion de suma 
addFunc: 
	; Creamos un Stack Frame para esta funcion 
	push rbp
	mov rsp, rbp 
	sub rsp, 0x8	;  Generar un espacio de  8bytes 

	add rax, rbx	; Operador de suma rax+rbx-->rax

	mov QWORD[rsp], rax	; Almacenar dato de rax en Stack Frame rsp 

	; Remover el Stack Frame 
	mov rsp, rbp 
	pop rbp
	ret

_start: 
	; Declarar valores  en registros para la operacion 
	mov rax, 3	; almacenar dato 3 en rax
	mov rbx, 4	; Almacenar dato 4 en rbx 

	; Llamar la funcion 
	call addFunc	

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall 	; int 0x80

