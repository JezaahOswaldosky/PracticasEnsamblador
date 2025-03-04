section .data 
	mensaje db 'Hola, Mundo!!',0	;Se define el texto 
section .text
	global _start		; Punto de entrada o el main 

_start: 
	; Llamada al sistema para escribir 
	mov eax, 4	; sys_write (4)
	mov ebx, 1	; Descriptor de archivo (1=stdout)
	mov ecx, mensaje ; Direccion de la cadena de texto 
	mov edx, 13	; Longitud de la cadena 
	int 0x80 	; Interrupcion del sistema 

	; Llamada al sistema para salir 
	mov eax, 1	; sys_exit(1)
	xor ebx, ebx	; Codigo de salida (0)
	int 0x80	; Interrupcion del sistema 


