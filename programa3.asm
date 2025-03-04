section .data 
	mensaje db 'Hola, Mundo!!', 0 

section .text 
	global _start

_start: 

	mov eax, 4	; sys_write 
	mov ebx, 1	; Descriptor de archivo 
	mov ecx, mensaje 
	mov edx, 13 
	int 0x80 

	mov eax, 1
	xor ebx, ebx
	int 0x80 

