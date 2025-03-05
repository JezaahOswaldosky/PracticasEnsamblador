section .data 
	num1 dd 3	; Primer numero 3 
	num2 dd 4	; Segundo numero 4

section .text 
	global _start

_start: 

	; Cargar los numeros en registros 
	mov eax, [num1]	; Carcar el num1 en eax 
	mov ebx, [num2] ; Cargar el num2 en ebx 

	; Realizar la multiplicacion 
	imul eax, ebx	; eax = eax*ebx 

	; Salir 
	mov ebx, eax	; Guardar el resutlador en ebx 
	mov eax, 1 	; sys_out 
	int 0x80 

