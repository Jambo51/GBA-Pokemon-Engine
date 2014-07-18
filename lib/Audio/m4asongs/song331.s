@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song331_grp, group_24
	.equ	song331_pri, 0
	.equ	song331_rev, 178
	.equ	song331_mvl, 127
	.equ	song331_key, 0
	.equ	song331_tbs, 1
	.equ	song331_exg, 1
	.equ	song331_cmp, 1

	.text
	.global	song331
	.align	2

@**************** Track 00 ****************************@

song331_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 1
	.byte		PAN   , c_v+16
	.byte		VOL   , 65*song331_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N12   , Bn2 , v088
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12   , Bn2 , v088
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_0 + 0x1E
	.byte		N12   , Bn2 , v088
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_0 + 0x48
	.byte	PATT
	 .word	song331_0 + 0x48
	.byte	PATT
	 .word	song331_0 + 0x48
	.byte	PATT
	 .word	song331_0 + 0x1E
	.byte	PATT
	 .word	song331_0 + 0x1E
	.byte	PATT
	 .word	song331_0 + 0x1E
	.byte	PATT
	 .word	song331_0 + 0x1E
	.byte		N12   , Fn4 , v088
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 56
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 49
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 45
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	TEMPO , 41
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	TEMPO , 39
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	TEMPO , 37
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	TEMPO , 33
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	TEMPO , 6
	.byte		        Cn2 
	.byte	W06
	.byte	TEMPO , 55
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12   , Ds3 , v088
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_0 + 0x13D
	.byte	PATT
	 .word	song331_0 + 0x13D
	.byte	PATT
	 .word	song331_0 + 0x13D
	.byte		N12   , An2 , v088
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_0 + 0x15F
	.byte	PATT
	 .word	song331_0 + 0x15F
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_0 + 0x1CE
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	W96
	.byte	W48
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W12
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v096
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	GOTO
	 .word	song331_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song331_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 73*song331_mvl/mxv
	.byte		N12   , Ds4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Ds4 , v016
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Cs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Cs4 , v016
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Cs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , As3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte	PEND
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Bn3 , v016
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Cs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs4 , v012
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Gs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Fs4 , v016
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Fs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Fs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , En4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Fs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , En4 , v016
	.byte	W12
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Ds4 , v016
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Cs4 , v016
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Cs4 , v016
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte	PATT
	 .word	song331_1 + 0x74
	.byte	PATT
	 .word	song331_1 + 0xAF
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N12   , Gs4 , v016
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , As4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , As4 , v028
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , As4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Bn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , En3 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , En3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , Ds3 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Ds3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , As2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , As2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , Dn3 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Dn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , An2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , An2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , Cs3 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cs3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , Gs2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gs2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , Cn3 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , Gn2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gn2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , Fs2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Fs2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N12   , As2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , As2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , Fn2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Fn2 , v016
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , An2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , An2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		N12   , En2 , v092
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , En2 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Bn4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , As4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte		N12   , An4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , An4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 24
	.byte		MOD   , 0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , As3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Bn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Bn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Fn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Gn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Gn3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , An3 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v020
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v012
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v008
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v012
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , An4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , An4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , An4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , An4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Cs5 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Cs5 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v008
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , En4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Cn5 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cn5 , v016
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Ds3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12   , Cs3 , v024
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , Ds3 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cs3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N12   , Cs3 , v024
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N12
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N12   , En2 , v096
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs2 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , En3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W03
	.byte		VOICE , 24
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 24
	.byte		MOD   , 0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		VOICE , 24
	.byte		MOD   , 0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W03
	.byte		VOICE , 1
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v032
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Bn2 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Bn2 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Bn2 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v032
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte	PEND
	.byte		MOD   , 0
	.byte		N12   , Ds3 , v032
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte	PATT
	 .word	song331_1 + 0xA30
	.byte	PATT
	 .word	song331_1 + 0xA3A
	.byte	GOTO
	 .word	song331_1 + 0x2
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song331_2:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-34
	.byte		VOL   , 65*song331_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W24
	.byte		N12   , Bn2 , v020
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N12   , Bn2 , v020
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_2 + 0x1D
	.byte	PATT
	 .word	song331_2 + 0x1D
	.byte		N12   , Ds3 , v020
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , En3 , v020
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_2 + 0x4C
	.byte	PATT
	 .word	song331_2 + 0x4C
	.byte		N12   , En3 , v020
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PATT
	 .word	song331_2 + 0x1D
	.byte	PATT
	 .word	song331_2 + 0x1D
	.byte	PATT
	 .word	song331_2 + 0x1D
	.byte		N12   , Bn2 , v020
	.byte	W12
	.byte		        Ds3 
	.byte	W84
	.byte	W96
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W54
	.byte	W96
	.byte	W48
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N12   , Ds3 , v020
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_2 + 0x10D
	.byte	PATT
	 .word	song331_2 + 0x10D
	.byte		N12   , Ds3 , v020
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N12   , An2 , v020
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_2 + 0x13C
	.byte		N12   , An2 , v020
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N12   , An3 , v020
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_2 + 0x166
	.byte		N12   , Cs4 , v020
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N12   , En3 , v020
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song331_2 + 0x1A0
	.byte		N12   , En3 , v020
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W84
	.byte	W72
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W12
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn2 , v016
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	GOTO
	 .word	song331_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song331_3:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 90*song331_mvl/mxv
	.byte	W72
	.byte		PAN   , c_v-32
	.byte		N03   , Bn1 , v092
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        En2 
	.byte	W09
	.byte		PAN   , c_v+32
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Fn2 
	.byte	W80
	.byte	W01
	.byte		VOL   , 79*song331_mvl/mxv
	.byte	W48
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+21
	.byte		N24   , En2 
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , Bn1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+22
	.byte		N24   , Ds2 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , As1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+22
	.byte		N24   , Dn2 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , An1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+23
	.byte		N24   , Cs2 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , Gs1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+22
	.byte		N24   , Cn2 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , Gn1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+21
	.byte		N24   , Bn1 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , Fs1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+22
	.byte		N24   , As1 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , Fn1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v+22
	.byte		N24   , An1 , v092
	.byte	W12
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W12
	.byte		        79*song331_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N48   , En1 , v080
	.byte	W12
	.byte		VOL   , 44*song331_mvl/mxv
	.byte	W06
	.byte		        29*song331_mvl/mxv
	.byte	W03
	.byte		        19*song331_mvl/mxv
	.byte	W03
	.byte		        10*song331_mvl/mxv
	.byte	W03
	.byte		        8*song331_mvl/mxv
	.byte	W03
	.byte		        5*song331_mvl/mxv
	.byte	W03
	.byte		        3*song331_mvl/mxv
	.byte	W03
	.byte		        1*song331_mvl/mxv
	.byte	W03
	.byte		        1*song331_mvl/mxv
	.byte	W09
	.byte		        0*song331_mvl/mxv
	.byte	W24
	.byte	W72
	.byte		PAN   , c_v+32
	.byte		VOL   , 90*song331_mvl/mxv
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Cn2 
	.byte	W09
	.byte		PAN   , c_v-32
	.byte		N03   , En2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Bn1 
	.byte	W09
	.byte		VOL   , 45*song331_mvl/mxv
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	GOTO
	 .word	song331_3 + 0x2
	.byte	FINE

@**************** Track 04 ****************************@

song331_4:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song331_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		TIE   , Gn3 , v040
	.byte	W03
	.byte		BEND  , c_v-10
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+0
	.byte	W36
	.byte		MOD   , 3
	.byte	W36
	.byte		BEND  , c_v-5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W48
	.byte		MOD   , 3
	.byte	W36
	.byte		BEND  , c_v-5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+2
	.byte	W06
	.byte		        c_v+0
	.byte	W36
	.byte	W03
	.byte		MOD   , 3
	.byte	W12
	.byte		BEND  , c_v+3
	.byte	W06
	.byte		        c_v+0
	.byte	W30
	.byte		MOD   , 0
	.byte	W48
	.byte		        3
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+13
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+18
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+23
	.byte	W03
	.byte		        c_v+25
	.byte	W03
	.byte		        c_v+26
	.byte	W03
	.byte		MOD   , 0
	.byte		BEND  , c_v+26
	.byte	W48
	.byte		MOD   , 3
	.byte	W42
	.byte		BEND  , c_v+24
	.byte	W06
	.byte		MOD   , 0
	.byte		BEND  , c_v+26
	.byte	W42
	.byte		        c_v+28
	.byte	W06
	.byte		MOD   , 3
	.byte		BEND  , c_v+26
	.byte	W48
	.byte		MOD   , 0
	.byte	W48
	.byte		        3
	.byte	W36
	.byte		BEND  , c_v+24
	.byte	W06
	.byte		        c_v+26
	.byte	W06
	.byte		MOD   , 0
	.byte	W48
	.byte	W03
	.byte		BEND  , c_v+24
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+19
	.byte	W03
	.byte		        c_v+18
	.byte	W03
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+14
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+9
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v+0
	.byte	W09
	.byte		MOD   , 4
	.byte	W48
	.byte		BEND  , c_v-4
	.byte	W06
	.byte		        c_v+0
	.byte	W30
	.byte	W36
	.byte	W03
	.byte		        c_v+4
	.byte	W09
	.byte		        c_v+0
	.byte	W48
	.byte	W32
	.byte	W01
	.byte		        c_v+2
	.byte	W06
	.byte		        c_v+0
	.byte	W56
	.byte	W01
	.byte	W36
	.byte		        c_v-4
	.byte	W12
	.byte		        c_v+0
	.byte	W48
	.byte		EOT
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N03   , Fn4 , v032
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 4*song331_mvl/mxv
	.byte	W48
	.byte		        4*song331_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		TIE   , Ds3 , v052
	.byte	W03
	.byte		VOL   , 7*song331_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		VOL   , 11*song331_mvl/mxv
	.byte	W03
	.byte		MOD   , 5
	.byte		VOL   , 15*song331_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W06
	.byte		VOL   , 17*song331_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		VOL   , 21*song331_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W06
	.byte		VOL   , 24*song331_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		VOL   , 28*song331_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		VOL   , 31*song331_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W06
	.byte		VOL   , 34*song331_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		        c_v-5
	.byte	W12
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W30
	.byte		        c_v-9
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+3
	.byte	W06
	.byte		        c_v+6
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte		        c_v+10
	.byte	W24
	.byte		MOD   , 4
	.byte	W96
	.byte	W96
	.byte		        7
	.byte	W84
	.byte		BEND  , c_v+8
	.byte	W12
	.byte	W12
	.byte		        c_v+6
	.byte	W12
	.byte		MOD   , 0
	.byte		BEND  , c_v+5
	.byte	W12
	.byte		MOD   , 4
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W32
	.byte	W01
	.byte		VOL   , 27*song331_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 22*song331_mvl/mxv
	.byte	W12
	.byte		        16*song331_mvl/mxv
	.byte	W12
	.byte		        10*song331_mvl/mxv
	.byte	W12
	.byte		        5*song331_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte		VOL   , 0*song331_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W92
	.byte	W01
	.byte		VOL   , 32*song331_mvl/mxv
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	GOTO
	 .word	song331_4 + 0x2
	.byte	FINE

@**************** Track 05 ****************************@

song331_5:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 34*song331_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Ds4 , v040
	.byte	W48
	.byte		MOD   , 3
	.byte	W36
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v+0
	.byte	W36
	.byte		MOD   , 3
	.byte	W48
	.byte		        0
	.byte	W36
	.byte		BEND  , c_v+2
	.byte	W12
	.byte		MOD   , 3
	.byte		BEND  , c_v+0
	.byte	W48
	.byte		MOD   , 0
	.byte	W36
	.byte		BEND  , c_v-3
	.byte	W12
	.byte		MOD   , 3
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+13
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+18
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+23
	.byte	W03
	.byte		        c_v+25
	.byte	W03
	.byte		        c_v+26
	.byte	W03
	.byte		MOD   , 0
	.byte		BEND  , c_v+26
	.byte	W48
	.byte		MOD   , 3
	.byte	W36
	.byte		BEND  , c_v+23
	.byte	W06
	.byte		        c_v+26
	.byte	W06
	.byte		MOD   , 0
	.byte	W36
	.byte		BEND  , c_v+27
	.byte	W06
	.byte		        c_v+26
	.byte	W06
	.byte		MOD   , 3
	.byte	W48
	.byte		        0
	.byte	W48
	.byte		        3
	.byte	W36
	.byte		BEND  , c_v+23
	.byte	W12
	.byte		MOD   , 0
	.byte		BEND  , c_v+26
	.byte	W48
	.byte	W03
	.byte		        c_v+24
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+19
	.byte	W03
	.byte		        c_v+18
	.byte	W03
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+14
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+9
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v+0
	.byte	W09
	.byte		MOD   , 4
	.byte	W21
	.byte		BEND  , c_v+3
	.byte	W06
	.byte		        c_v+0
	.byte	W48
	.byte	W03
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v+0
	.byte	W60
	.byte		        c_v+3
	.byte	W06
	.byte		        c_v+0
	.byte	W30
	.byte	W60
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W30
	.byte	W12
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+0
	.byte	W66
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		EOT
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N03   , Gs4 , v032
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N03
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 4*song331_mvl/mxv
	.byte	W48
	.byte		        4*song331_mvl/mxv
	.byte		BEND  , c_v-22
	.byte		TIE   , Cs4 , v052
	.byte	W03
	.byte		VOL   , 7*song331_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-18
	.byte	W03
	.byte		MOD   , 4
	.byte		VOL   , 11*song331_mvl/mxv
	.byte	W03
	.byte		        15*song331_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W06
	.byte		VOL   , 17*song331_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W06
	.byte		VOL   , 21*song331_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W06
	.byte		VOL   , 24*song331_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		VOL   , 28*song331_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-3
	.byte	W06
	.byte		VOL   , 31*song331_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W06
	.byte		VOL   , 34*song331_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-12
	.byte	W06
	.byte		        c_v-15
	.byte	W06
	.byte		        c_v-19
	.byte	W06
	.byte		        c_v-23
	.byte	W06
	.byte		        c_v-26
	.byte	W06
	.byte		        c_v-32
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W44
	.byte	W01
	.byte		        c_v-27
	.byte	W03
	.byte		        c_v-22
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+9
	.byte	W03
	.byte		        c_v+14
	.byte	W03
	.byte		        c_v+19
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+25
	.byte	W03
	.byte		        c_v+29
	.byte	W03
	.byte		        c_v+33
	.byte	W03
	.byte		        c_v+37
	.byte	W03
	.byte		        c_v+39
	.byte	W03
	.byte		MOD   , 4
	.byte		BEND  , c_v+42
	.byte	W96
	.byte	W96
	.byte		MOD   , 7
	.byte	W54
	.byte		BEND  , c_v+40
	.byte	W06
	.byte		        c_v+40
	.byte	W06
	.byte		        c_v+37
	.byte	W06
	.byte		        c_v+36
	.byte	W06
	.byte		        c_v+33
	.byte	W06
	.byte		        c_v+32
	.byte	W06
	.byte		        c_v+28
	.byte	W06
	.byte		MOD   , 0
	.byte		BEND  , c_v+26
	.byte	W24
	.byte		MOD   , 0
	.byte	W12
	.byte		        4
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W32
	.byte	W01
	.byte		VOL   , 27*song331_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 22*song331_mvl/mxv
	.byte	W12
	.byte		        16*song331_mvl/mxv
	.byte	W12
	.byte		        10*song331_mvl/mxv
	.byte	W12
	.byte		        5*song331_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte		VOL   , 0*song331_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
	.byte		VOL   , 34*song331_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N12   , Bn2 , v032
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	GOTO
	 .word	song331_5 + 0x2
	.byte	FINE

@**************** Track 06 ****************************@

song331_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 44*song331_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		VOL   , 22*song331_mvl/mxv
	.byte		N96   , Cn3 , v052
	.byte	W12
	.byte		VOL   , 25*song331_mvl/mxv
	.byte	W12
	.byte		        27*song331_mvl/mxv
	.byte	W12
	.byte		        29*song331_mvl/mxv
	.byte	W12
	.byte		        34*song331_mvl/mxv
	.byte	W09
	.byte		        38*song331_mvl/mxv
	.byte	W15
	.byte		        39*song331_mvl/mxv
	.byte	W12
	.byte		        41*song331_mvl/mxv
	.byte	W12
	.byte		        44*song331_mvl/mxv
	.byte		N48   , Gn2 , v076
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 25*song331_mvl/mxv
	.byte		N96   , Cn3 , v052
	.byte	W09
	.byte		VOL   , 26*song331_mvl/mxv
	.byte	W09
	.byte		        29*song331_mvl/mxv
	.byte	W06
	.byte		        34*song331_mvl/mxv
	.byte	W12
	.byte		        35*song331_mvl/mxv
	.byte	W12
	.byte		        39*song331_mvl/mxv
	.byte	W12
	.byte		        42*song331_mvl/mxv
	.byte	W12
	.byte		        45*song331_mvl/mxv
	.byte	W24
	.byte		N48   , An2 , v076
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	GOTO
	 .word	song331_6 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song331:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song331_pri	@ Priority
	.byte	song331_rev	@ Reverb.

	.word	song331_grp

	.word	song331_0
	.word	song331_1
	.word	song331_2
	.word	song331_3
	.word	song331_4
	.word	song331_5
	.word	song331_6

	.end
