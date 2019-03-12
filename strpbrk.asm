	BITS	64

	SECTION	.text
	GLOBAL	strpbrk:function

strpbrk:
	MOV	r8, 0

loop:
	MOV	r9, 0
	MOV	r10b, BYTE [RDI + r8]
	CMP	r10b, 0h
	JE	null
	INC	r8
	JMP	search

search:
	CMP	BYTE [RSI + r9], 0h
	JE	loop
	CMP	BYTE [RSI + r9], r10b
	JE	end
	INC	r9
	JMP	search

end:
	DEC	r8
	MOV	RAX, [RDI + r8]
	RET

null:
	MOV	RAX, 0
	RET
