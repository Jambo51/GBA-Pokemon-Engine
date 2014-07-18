@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song103_grp, group_5
	.equ	song103_pri, 5
	.equ	song103_rev, 178
	.equ	song103_mvl, 127
	.equ	song103_key, 0
	.equ	song103_tbs, 1
	.equ	song103_exg, 1
	.equ	song103_cmp, 1

	.text
	.global	song103
	.align	2

@**************** Track 00 ****************************@

song103_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 4
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 100*song103_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		N01   , Cn4 , v032
	.byte	W01
	.byte		N02   , Gn4 , v060
	.byte	W03
	.byte		N01   , Gn4 , v032
	.byte	W01
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		        Cn4 , v032
	.byte	W03
	.byte		        Cn5 , v060
	.byte	W02
	.byte		        Cn5 , v032
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song103_1:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 50*song103_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		N01   , Cn4 , v032
	.byte	W01
	.byte		N02   , Gn4 , v060
	.byte	W02
	.byte	W01
	.byte		N01   , Gn4 , v032
	.byte	W01
	.byte		N02   , Cn4 , v060
	.byte	W02
	.byte		        Cn4 , v032
	.byte	W02
	.byte	W01
	.byte		        Cn5 , v060
	.byte	W02
	.byte		        Cn5 , v032
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song103:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song103_pri	@ Priority
	.byte	song103_rev	@ Reverb.

	.word	song103_grp

	.word	song103_0
	.word	song103_1

	.end
