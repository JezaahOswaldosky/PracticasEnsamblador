section .text 
	global _start 

_start: 
	mov rax, 100	; Colocar dato 100 en reg rax 
	mov rbx, 200	; Colocar dato 200 en reg rbx 

	; Realizamos el salto en esamblador 
	jmp exit	; Instruccion de salto a exit
	
	; Instruccion evitada por el salto
	mov rcx, 30	; Colocar dato 30 en reg rcx

exit: 	; Creamos la etiqueta 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0	; xor ebx, ebx 
	syscall		; int 0x80 


