	BITS 		64
	
	SECTION		.data

	SECTION 	.text
	GLOBAL 		strlen:function
	
strlen:
	MOV		RAX, 0		;; RAX = 0

loop:
	CMP		BYTE [RDI], 0h	;; Comparaison Byte avec '\0'
	JE		end		;; Jump if equal
	INC		RDI		;; Incrémentation
	INC		RAX		;; Incrémentation
	JMP		loop		;; Jump sans condition
end:
	RET
