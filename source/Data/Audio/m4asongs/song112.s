@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song112_grp, group_6
	.equ	song112_pri, 4
	.equ	song112_rev, 178
	.equ	song112_mvl, 127
	.equ	song112_key, 0
	.equ	song112_tbs, 1
	.equ	song112_exg, 1
	.equ	song112_cmp, 1

	.section .rodata
	.global	song112
	.align	2

@**************** Track 00 ****************************@

song112_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		VOL   , 100*song112_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Cn4 , v088
	.byte	W06
	.byte		PAN   , c_v-9
	.byte		N03   , Cn4 , v080
	.byte	W06
	.byte		PAN   , c_v+9
	.byte		N03   , Cn4 , v072
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N03   , Cn4 , v064
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N03   , Cn4 , v060
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N03   , Cn4 , v052
	.byte	W18
	.byte	FINE

@**************** Track 01 ****************************@

song112_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 100*song112_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		N02   , Gn3 , v072
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N02   , Gn3 , v068
	.byte	W06
	.byte		PAN   , c_v+9
	.byte		N02   , Gn3 , v064
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N02   , Gn3 , v060
	.byte	W06
	.byte		PAN   , c_v+9
	.byte		N02   , Gn3 , v056
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N02   , Gn3 , v048
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song112:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song112_pri	@ Priority
	.byte	song112_rev	@ Reverb.

	.word	song112_grp

	.word	song112_0
	.word	song112_1

	.end
