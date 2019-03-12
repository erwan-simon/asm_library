	BITS	64

	SECTION	.text
	GLOBAL	strcspn:function

strcspn:
	MOV	r8, 0
	MOV	r9, 0
	MOV	RAX, 0

loop:
	MOV	DL, BYTE [RDI + r8]
	CMP	BYTE [RDI + r8], 0h
	JE	end
	INC	r8
	JMP	search

search:
	CMP	BYTE [RSI + r9], 0h
	JE	getup
	CMP	BYTE [RSI + r9], DL
	JE	end
	INC	r9
	JMP	search

getup:
	MOV	r9, 0
	INC	RAX
	JMP	loop

end:
	RET
