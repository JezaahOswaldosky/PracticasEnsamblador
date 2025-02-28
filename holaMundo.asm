section .data
hello_str: db "Hola mundo", 0 
section .text 

global _start 
_start:  
	mov rax, 1 
	mov rdi, 1
	
	lea rsi, [hello_str]
	
	mov rdx, 11
	syscall 
	
	mov rax, 60 
	mov rdi, 0 
	syscall 
