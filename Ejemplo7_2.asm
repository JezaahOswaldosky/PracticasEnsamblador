section .data 
	a: db	"abcd"

section .text 
	global _start 

_start: 
	mov eax, [a]	; Inservar datos de a en reg eax 

	; Instruccion de salida del programa 
	mov rax, 60	; Directiva de salida 
	mov rdi, 0 
	syscall 	; Identico a int 0x80 


