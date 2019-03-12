	BITS	64

	SECTION	.data

	SECTION	.text
	GLOBAL 	strncmp:function
	EXTERN	printf

strncmp:
	MOV	RAX, 0

loop:
	CMP	RAX, RDX
	JE	e
	MOV	CL, BYTE [RDI]
	MOV	r8b, BYTE [RSI]
	CMP	CL, r8b
	JG	above
	JL	under
	CMP	BYTE [RSI], 0h
	JE	e
	INC	RAX
	INC	RDI
	INC	RSI
	JMP	loop

e:	
	MOV	RAX, 0
	RET

above:
	MOV	RAX, 1
	RET

under:
	MOV	RAX, -1
	RET
