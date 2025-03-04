section .data 
	a: 	db 	125	
	b: 	db	7	
section .text 
	global _start 
_start: 
	mov al, [a]
	mov bl, [b]
	add al, bl 

	mov rax, 60	
	mov rdi, 0 
	syscall 

