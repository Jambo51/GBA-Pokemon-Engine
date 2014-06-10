@***********************************************************************@
@			GBCEngineDefs.s ver1.0				@
@			GBC Music Engine Definitions			@ 
@			Written by Jambo51 2014				@
@***********************************************************************@

@***********************************************************************@
@			Note Name Definitions				@
@***********************************************************************@

	.equ	NONOTE,		0x00
	.equ	C,		0x10
	.equ	CS,		0x20
	.equ	Cs,		CS
	.equ	D,		0x30
	.equ	DS,		0x40
	.equ	Ds,		DS
	.equ	E,		0x50
	.equ	F,		0x60
	.equ	FS,		0x70
	.equ	Fs,		FS
	.equ	G,		0x80
	.equ	GS,		0x90
	.equ	Gs,		GS
	.equ	A,		0xA0
	.equ	AS,		0xB0
	.equ	As,		AS
	.equ	B,		0xC0

@***********************************************************************@
@			Note Length Definitions				@
@***********************************************************************@

	.equ 	W0,		0x00
	.equ	W1,		W0 + 1
	.equ	W2,		W0 + 2
	.equ	W3,		W0 + 3
	.equ	W4,		W0 + 4
	.equ	W5,		W0 + 5
	.equ	W6,		W0 + 6
	.equ	W7,		W0 + 7
	.equ	W8,		W0 + 8
	.equ	W9,		W0 + 9
	.equ	W10,		W0 + 10
	.equ	W11,		W0 + 11
	.equ	W12,		W0 + 12
	.equ	W13,		W0 + 13
	.equ	W14,		W0 + 14
	.equ	W15,		W0 + 15

@***********************************************************************@
@			Octave Definitions				@
@		  Sets Octave Of Following Notes			@
@***********************************************************************@

	.equ		OCT7,		0xD0
	.equ		OCT6,		OCT7 + 1
	.equ		OCT5,		OCT6 + 1
	.equ		OCT4,		OCT5 + 1
	.equ		OCT3,		OCT4 + 1
	.equ		OCT2,		OCT3 + 1
	.equ		OCT1,		OCT2 + 1
	.equ		OCT0,		OCT1 + 1

@***********************************************************************@
@			Command Definitions				@
@***********************************************************************@

	.equ		FRDEL,		0xD8
	.equ		KEYSH,		0xD9
	.equ		TEMPO,		0xDA
	.equ		DUTYC,		0xDB
	.equ		STYLE,		0xDC
	.equ		ARPEG,		0xDD
	.equ		PBEND,		0xE0
	.equ		MOD,		0xE1
	.equ		NSET,		0xE3
	.equ		MVOL,		0xE5
	.equ		TONE,		0xE6
	.equ		PAN,		0xEF
	.equ		JUMP,		0xFC
	.equ		JUMPC,		0xFD
	.equ		CALL,		0xFE
	.equ		END,		0xFF
	.equ		RET,		END

@***********************************************************************@
@			Note Definitions				@
@	        Notes are the note pitch + note length			@	
@		     Octave is set by command				@
@***********************************************************************@

	.equ		NONOTE0,	NONOTE + W0
	.equ		C0,		C + W0
	.equ		CS0,		CS + W0
	.equ		Cs0,		Cs + W0
	.equ		D0,		D + W0
	.equ		DS0,		DS + W0
	.equ		Ds0,		Ds + W0
	.equ		E0,		E + W0
	.equ		F0,		F + W0
	.equ		FS0,		FS + W0
	.equ		Fs0,		Fs + W0
	.equ		G0,		G + W0
	.equ		GS0,		GS + W0
	.equ		Gs0,		Gs + W0
	.equ		A0,		A + W0
	.equ		AS0,		AS + W0
	.equ		As0,		As + W0
	.equ		B0,		B + W0
	.equ		NONOTE1,	NONOTE + W1
	.equ		C1,		C + W1
	.equ		CS1,		CS + W1
	.equ		Cs1,		Cs + W1
	.equ		D1,		D + W1
	.equ		DS1,		DS + W1
	.equ		Ds1,		Ds + W1
	.equ		E1,		E + W1
	.equ		F1,		F + W1
	.equ		FS1,		FS + W1
	.equ		Fs1,		Fs + W1
	.equ		G1,		G + W1
	.equ		GS1,		GS + W1
	.equ		Gs1,		Gs + W1
	.equ		A1,		A + W1
	.equ		AS1,		AS + W1
	.equ		As1,		As + W1
	.equ		B1,		B + W1
	.equ		NONOTE2,	NONOTE + W2
	.equ		C2,		C + W2
	.equ		CS2,		CS + W2
	.equ		Cs2,		Cs + W2
	.equ		D2,		D + W2
	.equ		DS2,		DS + W2
	.equ		Ds2,		Ds + W2
	.equ		E2,		E + W2
	.equ		F2,		F + W2
	.equ		FS2,		FS + W2
	.equ		Fs2,		Fs + W2
	.equ		G2,		G + W2
	.equ		GS2,		GS + W2
	.equ		Gs2,		Gs + W2
	.equ		A2,		A + W2
	.equ		AS2,		AS + W2
	.equ		As2,		As + W2
	.equ		B2,		B + W2
	.equ		NONOTE3,	NONOTE + W3
	.equ		C3,		C + W3
	.equ		CS3,		CS + W3
	.equ		Cs3,		Cs + W3
	.equ		D3,		D + W3
	.equ		DS3,		DS + W3
	.equ		Ds3,		Ds + W3
	.equ		E3,		E + W3
	.equ		F3,		F + W3
	.equ		FS3,		FS + W3
	.equ		Fs3,		Fs + W3
	.equ		G3,		G + W3
	.equ		GS3,		GS + W3
	.equ		Gs3,		Gs + W3
	.equ		A3,		A + W3
	.equ		AS3,		AS + W3
	.equ		As3,		As + W3
	.equ		B3,		B + W3
	.equ		NONOTE4,	NONOTE + W4
	.equ		C4,		C + W4
	.equ		CS4,		CS + W4
	.equ		Cs4,		Cs + W4
	.equ		D4,		D + W4
	.equ		DS4,		DS + W4
	.equ		Ds4,		Ds + W4
	.equ		E4,		E + W4
	.equ		F4,		F + W4
	.equ		FS4,		FS + W4
	.equ		Fs4,		Fs + W4
	.equ		G4,		G + W4
	.equ		GS4,		GS + W4
	.equ		Gs4,		Gs + W4
	.equ		A4,		A + W4
	.equ		AS4,		AS + W4
	.equ		As4,		As + W4
	.equ		B4,		B + W4
	.equ		NONOTE5,	NONOTE + W5
	.equ		C5,		C + W5
	.equ		CS5,		CS + W5
	.equ		Cs5,		Cs + W5
	.equ		D5,		D + W5
	.equ		DS5,		DS + W5
	.equ		Ds5,		Ds + W5
	.equ		E5,		E + W5
	.equ		F5,		F + W5
	.equ		FS5,		FS + W5
	.equ		Fs5,		Fs + W5
	.equ		G5,		G + W5
	.equ		GS5,		GS + W5
	.equ		Gs5,		Gs + W5
	.equ		A5,		A + W5
	.equ		AS5,		AS + W5
	.equ		As5,		As + W5
	.equ		B5,		B + W5
	.equ		NONOTE6,	NONOTE + W6
	.equ		C6,		C + W6
	.equ		CS6,		CS + W6
	.equ		Cs6,		Cs + W6
	.equ		D6,		D + W6
	.equ		DS6,		DS + W6
	.equ		Ds6,		Ds + W6
	.equ		E6,		E + W6
	.equ		F6,		F + W6
	.equ		FS6,		FS + W6
	.equ		Fs6,		Fs + W6
	.equ		G6,		G + W6
	.equ		GS6,		GS + W6
	.equ		Gs6,		Gs + W6
	.equ		A6,		A + W6
	.equ		AS6,		AS + W6
	.equ		As6,		As + W6
	.equ		B6,		B + W6
	.equ		NONOTE7,	NONOTE + W7
	.equ		C7,		C + W7
	.equ		CS7,		CS + W7
	.equ		Cs7,		Cs + W7
	.equ		D7,		D + W7
	.equ		DS7,		DS + W7
	.equ		Ds7,		Ds + W7
	.equ		E7,		E + W7
	.equ		F7,		F + W7
	.equ		FS7,		FS + W7
	.equ		Fs7,		Fs + W7
	.equ		G7,		G + W7
	.equ		GS7,		GS + W7
	.equ		Gs7,		Gs + W7
	.equ		A7,		A + W7
	.equ		AS7,		AS + W7
	.equ		As7,		As + W7
	.equ		B7,		B + W7
	.equ		NONOTE8,	NONOTE + W8
	.equ		C8,		C + W8
	.equ		CS8,		CS + W8
	.equ		Cs8,		Cs + W8
	.equ		D8,		D + W8
	.equ		DS8,		DS + W8
	.equ		Ds8,		Ds + W8
	.equ		E8,		E + W8
	.equ		F8,		F + W8
	.equ		FS8,		FS + W8
	.equ		Fs8,		Fs + W8
	.equ		G8,		G + W8
	.equ		GS8,		GS + W8
	.equ		Gs8,		Gs + W8
	.equ		A8,		A + W8
	.equ		AS8,		AS + W8
	.equ		As8,		As + W8
	.equ		B8,		B + W8
	.equ		NONOTE9,	NONOTE + W9
	.equ		C9,		C + W9
	.equ		CS9,		CS + W9
	.equ		Cs9,		Cs + W9
	.equ		D9,		D + W9
	.equ		DS9,		DS + W9
	.equ		Ds9,		Ds + W9
	.equ		E9,		E + W9
	.equ		F9,		F + W9
	.equ		FS9,		FS + W9
	.equ		Fs9,		Fs + W9
	.equ		G9,		G + W9
	.equ		GS9,		GS + W9
	.equ		Gs9,		Gs + W9
	.equ		A9,		A + W9
	.equ		AS9,		AS + W9
	.equ		As9,		As + W9
	.equ		B9,		B + W9
	.equ		NONOTE10,	NONOTE + W10
	.equ		C10,		C + W10
	.equ		CS10,		CS + W10
	.equ		Cs10,		Cs + W10
	.equ		D10,		D + W10
	.equ		DS10,		DS + W10
	.equ		Ds10,		Ds + W10
	.equ		E10,		E + W10
	.equ		F10,		F + W10
	.equ		FS10,		FS + W10
	.equ		Fs10,		Fs + W10
	.equ		G10,		G + W10
	.equ		GS10,		GS + W10
	.equ		Gs10,		Gs + W10
	.equ		A10,		A + W10
	.equ		AS10,		AS + W10
	.equ		As10,		As + W10
	.equ		B10,		B + W10
	.equ		NONOTE11,	NONOTE + W11
	.equ		C11,		C + W11
	.equ		CS11,		CS + W11
	.equ		Cs11,		Cs + W11
	.equ		D11,		D + W11
	.equ		DS11,		DS + W11
	.equ		Ds11,		Ds + W11
	.equ		E11,		E + W11
	.equ		F11,		F + W11
	.equ		FS11,		FS + W11
	.equ		Fs11,		Fs + W11
	.equ		G11,		G + W11
	.equ		GS11,		GS + W11
	.equ		Gs11,		Gs + W11
	.equ		A11,		A + W11
	.equ		AS11,		AS + W11
	.equ		As11,		As + W11
	.equ		B11,		B + W11
	.equ		NONOTE12,	NONOTE + W12
	.equ		C12,		C + W12
	.equ		CS12,		CS + W12
	.equ		Cs12,		Cs + W12
	.equ		D12,		D + W12
	.equ		DS12,		DS + W12
	.equ		Ds12,		Ds + W12
	.equ		E12,		E + W12
	.equ		F12,		F + W12
	.equ		FS12,		FS + W12
	.equ		Fs12,		Fs + W12
	.equ		G12,		G + W12
	.equ		GS12,		GS + W12
	.equ		Gs12,		Gs + W12
	.equ		A12,		A + W12
	.equ		AS12,		AS + W12
	.equ		As12,		As + W12
	.equ		B12,		B + W12
	.equ		NONOTE13,	NONOTE + W13
	.equ		C13,		C + W13
	.equ		CS13,		CS + W13
	.equ		Cs13,		Cs + W13
	.equ		D13,		D + W13
	.equ		DS13,		DS + W13
	.equ		Ds13,		Ds + W13
	.equ		E13,		E + W13
	.equ		F13,		F + W13
	.equ		FS13,		FS + W13
	.equ		Fs13,		Fs + W13
	.equ		G13,		G + W13
	.equ		GS13,		GS + W13
	.equ		Gs13,		Gs + W13
	.equ		A13,		A + W13
	.equ		AS13,		AS + W13
	.equ		As13,		As + W13
	.equ		B13,		B + W13
	.equ		NONOTE14,	NONOTE + W14
	.equ		C14,		C + W14
	.equ		CS14,		CS + W14
	.equ		Cs14,		Cs + W14
	.equ		D14,		D + W14
	.equ		DS14,		DS + W14
	.equ		Ds14,		Ds + W14
	.equ		E14,		E + W14
	.equ		F14,		F + W14
	.equ		FS14,		FS + W14
	.equ		Fs14,		Fs + W14
	.equ		G14,		G + W14
	.equ		GS14,		GS + W14
	.equ		Gs14,		Gs + W14
	.equ		A14,		A + W14
	.equ		AS14,		AS + W14
	.equ		As14,		As + W14
	.equ		B14,		B + W14
	.equ		NONOTE15,	NONOTE + W15
	.equ		C15,		C + W15
	.equ		CS15,		CS + W15
	.equ		Cs15,		Cs + W15
	.equ		D15,		D + W15
	.equ		DS15,		DS + W15
	.equ		Ds15,		Ds + W15
	.equ		E15,		E + W15
	.equ		F15,		F + W15
	.equ		FS15,		FS + W15
	.equ		Fs15,		Fs + W15
	.equ		G15,		G + W15
	.equ		GS15,		GS + W15
	.equ		Gs15,		Gs + W15
	.equ		A15,		A + W15
	.equ		AS15,		AS + W15
	.equ		As15,		As + W15
	.equ		B15,		B + W15
