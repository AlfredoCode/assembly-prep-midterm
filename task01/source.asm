%include "../rw32-2022.inc"

section .data

section .text

CMAIN:
	; Task01 - Proveď swap dvou registru za pomocí instrukce XOR

	xor eax, eax
	xor ebx, ebx	; Pro jistotu vynulujeme všechny registry, jeden nikdy neví
	xor ecx, ecx
	xor edx, edx

	mov eax, 0b11101011
	mov ebx, 0b00010100	; Loadneme do registrů EAX a EBX nějaké defaultní hodnoty
	mov ecx, eax	; ECX slouží jako pomocný registr pro uložení hodnoty EAX

	xor eax, ebx	; Zde se do EAX uloží hodnota 0b11111111
	xor ecx, eax	; Do ECX se uloží 0b00010100
	mov EDX, ECX	; Hodnotu z ECX přesuneme do EDX, jelikož s ECX budeme ještě pracovat a tedy jej nesmíme přepsat

	xor ecx, eax	; Zde se do ECX uloží hodnota 11101011
	mov ebx, ecx	; Jelikož chceme hodnotu z ECX v EBX, je nutno ji přesunout
	mov eax, edx	; Do registru EAX přesuneme hodnotu z dočasného registru EDX
	call WriteBin8
	call WriteNewLine
	mov eax, ebx	; Nyní stačí již jen vypsat na obrazovku :)
	call WriteBin8
	call WriteNewLine
ret
