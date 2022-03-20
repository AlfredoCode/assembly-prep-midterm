%include "../rw32-2022.inc"

section .data

section .text

CMAIN:
	;task00 - Spočítejte počet 1 a 0 v registru EAX

	xor eax, eax
	mov ax, 0b10100010

	xor ebx, ebx
	xor ecx, ecx

	mov cx, ax	; Registr ECX mi bude sloužit jako dočasné uložiště hodnoty EAX

	popcnt ebx, eax	; Instrukce popcnt vrací počet jedničkových bitů v src a výsledný počet uloží do dst

	mov al, bl	; Jelikož hodnoty chci vypisovat, je potřeba z registru EBX uložit hodnoty do EAX
	call WriteInt8
	call WriteNewLine

	not cl	; Instrukce not invertuje všechny bity, tzn z původní hodnoty AX je nyní 01011101

	popcnt ebx, ecx	; Znovu pomocí popcnt spočítáme, kolik jedničkových bitů se nachází v src, nyní ale víme, že všechny jedničkové bity jsou ve skutečnosti invertované 0

	mov al, bl
	call WriteInt8	; Vypíšeme na obrazovku
	call WriteNewLine
ret
