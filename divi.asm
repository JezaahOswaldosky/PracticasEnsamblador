section .data 
	a: dq 17 
	b: dq 5

section .text 
	global _start 

_start: 
	; Mover valores de variables a registros rax y rbx  
	mov rax, [a]	; Mover var a a registro rax 
	mov rbx, [b]	; Mover var b a registro rbx 
	
	; Aritmetica de division 
	idiv rbx	; rax/rbx y guarga en rax 

	; Instruccion de salida 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor rbx, rbx 
	syscall 	; int 0x80 


