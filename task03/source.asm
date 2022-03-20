%include "../rw32-2022.inc"

section .data


section .text

CMAIN:
	xor dl, dl
	xor ch, ch
	xor eax, eax 

	mov dx, 0b11101010
	mov cx, 0b00100100

	shr dx, 4
	shl cx, 4

	xchg dl, cl

	shl dx, 4
	shr cx, 4

	mov ax, dx
	call WriteBin16
	call WriteNewLine

	mov ax, cx
	call WriteBin16
	call WriteNewLine

ret
