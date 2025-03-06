section .text 
	global _start 

_start:
	; Instruccion para el Stack Frame 
	push rbp	; Presionar rbp dentro de la cima de la pila (Stack) 
	mov rbp, rsp	; Mover el valor rbp 
	sub rsp, 0x8	; Restar valor de 8 a rsp 

	; Crear el dato en el Strack Frame
	mov QWORD[rsp], 4 ; Almacenar dato 4 en rsp 
	
	; Remover el Stack Frame 
	mov rsp, rbp	; Mover rbp a rsp 
	pop rbp		; Liberar la memoria del stack 

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 

