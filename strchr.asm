	BITS	64

	SECTION	.data

	SECTION	.text
	GLOBAL 	strchr:function
	EXTERN	printf

strchr:
	MOV	RAX, 0

loop:
	CMP	BYTE [RDI], SIL
	JE	end
	INC	RDI
	CMP	BYTE [RDI], 0h
	JE	null
	JMP	loop

end:
	MOV	RAX, RDI
	RET

null:
	CMP	SIL, 0h
	JE	end
	RET
