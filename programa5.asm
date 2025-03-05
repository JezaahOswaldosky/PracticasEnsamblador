section .data 
	mensaje db 'El numero es: ', 0 

section .text 
	global _start

_start: 
	mov ecx, 1	; Iniciar el contador en 1

bucle: 
	mov eax, 4	; Sys_write 
	mov ebx, 1	; stdout 
	mov edx, 14	; Longitud de la cadena de texto 
	mov esi, mensaje ; Direccion del mensaje 
	int 0x80 

	; Imprimir el numero 
	mov eax, ecx	; Copiar el valor del contador a eax 
	add eax, '0'	; Convertir el numero a su representacion ASCII 
	mov ebx, 1	; File descriptor 
	mov edx,1 	; Longitud del numero 
	int 0x80 

	; Incrementar el contador 
	inc ecx 	

	; Repetir hasta llegar a 10 
	cmp ecx, 11 
	jl bucle 

	; Salir 
	mov eax, 1 
	xor ebx, ebx 
	int 0x80 
 
