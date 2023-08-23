[BITS 16]
[ORG 0x7C00]

MOV AL, 'H'
CALL PrintCharacter
MOV AL, 'e'
CALL PrintCharacter
MOV AL, 'l'
CALL PrintCharacter
MOV AL, 'l'
CALL PrintCharacter
MOV AL, 'o'
CALL PrintCharacter
MOV AL, ' '
CALL PrintCharacter
MOV AL, 'W'
CALL PrintCharacter
MOV AL, 'o'
CALL PrintCharacter
MOV AL, 'r'
CALL PrintCharacter
MOV AL, 'l'
CALL PrintCharacter
MOV AL, 'd'
CALL PrintCharacter
JMP $ 		; inf loop


PrintCharacter:
	; ASCII value is in AL
MOV AH, 0x0E	; one charater screen.
MOV BH, 0x00	; page no.
MOV BL, 0x07	; lightgrey font on black background

INT 0x10	; video interrupt
RET		; return

TIMES 510 - ($ - $$) db 0	; fill the rest of sector with 0
DW 0xAA55			; boot signature