	BITS	64

	SECTION	.text
	GLOBAL 	rindex:function
	EXTERN	printf

rindex:
	MOV	RAX, 0

loop:
	CMP	BYTE [RDI], 0h
	JE	end
	CMP	BYTE [RDI], SIL
	JE	change
	INC	RDI
	JMP	loop

end:
	CMP	RSI, 0
	JNE	null
	MOV	RAX, RDI
	RET

null:	
	RET

change:
	MOV	RAX, RDI
	INC	RDI
	JMP	loop

