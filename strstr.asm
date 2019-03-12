	BITS	64

	SECTION	.text
	GLOBAL	strstr:function

strstr:
	MOV	r8, 0
	MOV	r9, 0

loop:
	MOV	R10B, BYTE [RDI + r8]
	MOV	r11b, BYTE [RSI + r9]
	
	CMP	BYTE [RDI + r8], 0h
	JE	null
	CMP	BYTE [RSI + r9], 0h
	JE	end
	CMP	r11b, R10B
	JE	match
	JNE	nmatch
	JMP	loop

match:
	INC	r8
	INC	r9
	JMP	loop

nmatch:
	INC	r8
	MOV	r9, 0
	JMP	loop

end:
	CMP	BYTE [RSI], 0
	JE	null
	SUB	r8, r9
	ADD	RDI, r8
	MOV	RAX, RDI
	RET

null:
	MOV	RAX, 0
	RET
