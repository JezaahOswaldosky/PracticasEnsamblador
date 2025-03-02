section .text 
	global _start

_start: 
	; Instrucciones iniciales 
	mov rax, 3	; Dato 3 en rax 
	mov rbx, 3	; Dato 3 en rbx 
	sub rax, rbx 
	
	jz instruccion2 ; Saltar a instruccion 2


instruccion1: 
	mov rax, 100	; Datpo 100 en rax 
	mov rbx, 135	; Dato 135 en rbx 
	sub rax, rbx	; Operacion resta rax-rbx-->rax

	jnz exit	


instruccion2: 
	; Instruccion de entradas 
	mov rax, 50	; Dato 50 en rax
	mov rbx, 50	; Dato 50 en rbx 
	sub rax, rbx	; Operacion resta rax-rbx-->rax
	
	jz instruccion1	; Saltar a instruccion 1
	
exit: 
	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 

