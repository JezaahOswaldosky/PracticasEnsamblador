section .text 
	global _start 

_start: 
	;	Introducir variables en registros 
	mov rax, 5	; Almacenar dato 5 en reg rax 
	mov rbx, 5	; Almacenar dato 5 en reg rbx 
	sub rax, rbx 	; Instruccion rax-rbx--> rax 

	; Instruccion de salto si es zero 
	jz exit_3

	; Instruccion de salida si se cumple la condicion 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 

exit_3: 
	; Instruccion de salida si se cumple la condicion 
	mov rax, 60	; 
	mov rdi, 3	; 
	syscall		; int 0x80 


