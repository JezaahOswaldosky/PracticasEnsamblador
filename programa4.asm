section .text 
	global _start

_start: 
	;Asignar valores a los registros 
	mov eax, 5	; Primer numero 5 
	mov ebx, 10 	; Segundo numero 10 
	
	add eax, ebx	; Sumar los numeros 
	
	; Salir del programa 
	mov ebx, eax	; Guardar el resutlado en ebx 
	mov eax, 1	; sys_exit 
	int 0x80 

