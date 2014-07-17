@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song57_grp, group_6
	.equ	song57_pri, 4
	.equ	song57_rev, 178
	.equ	song57_mvl, 127
	.equ	song57_key, 0
	.equ	song57_tbs, 1
	.equ	song57_exg, 1
	.equ	song57_cmp, 1

	.section .rodata
	.global	song57
	.align	2

@**************** Track 00 ****************************@

song57_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song57_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , En5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , En5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song57_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song57_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Bn5 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , Bn5 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song57:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song57_pri	@ Priority
	.byte	song57_rev	@ Reverb.

	.word	song57_grp

	.word	song57_0
	.word	song57_1

	.end
