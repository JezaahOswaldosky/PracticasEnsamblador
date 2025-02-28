section .text 
	global _start 

myFunction: 
	; Create un staeck frame para esta funcion 
	push rbp 
	mov rbp, rsp 
	sub rsp, 8 

	; Sumar dos numeros y almacenar el resutado en el stack 
	mov rax, 3	; Insertar dato 3 en rax 
	mov rbx, 4	; Insertar dato 4 en rbx 
	add rax, rbp	; Operacion suma rax+rbx--> rbx 
	
	; Mover el resultado  al Stack 
	mov QWORD[rsp], rax 

	; Remover el Stack Frame 
	mov rsp, rbp 
	pop rbp 

_start: 
	; Instruccion de salida del programa 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall 	; int 0x80 


	
