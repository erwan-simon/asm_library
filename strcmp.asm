	BITS	64

	SECTION	.data

	SECTION	.text
	GLOBAL 	strcmp:function

strcmp:
	MOV	AL, 0
loop:
	MOV	CL, BYTE [RDI]
	MOV	r8b, BYTE [RSI]
	CMP	BYTE CL, r8b
	JG	above
	JL	under
	CMP	BYTE [RSI], 0h
	JE	e
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
