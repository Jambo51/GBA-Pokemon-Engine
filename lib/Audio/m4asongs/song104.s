@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song104_grp, group_5
	.equ	song104_pri, 5
	.equ	song104_rev, 178
	.equ	song104_mvl, 127
	.equ	song104_key, 0
	.equ	song104_tbs, 1
	.equ	song104_exg, 1
	.equ	song104_cmp, 1

	.section .rodata
	.global	song104
	.align	2

@**************** Track 00 ****************************@

song104_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 4
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 100*song104_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Gn4 , v060
	.byte	W02
	.byte		N01   , Gn4 , v032
	.byte	W01
	.byte		N02   , Dn4 , v060
	.byte	W03
	.byte		N01   , Dn4 , v032
	.byte	W01
	.byte		N02   , Gn4 , v060
	.byte	W02
	.byte		        Gn4 , v032
	.byte	W03
	.byte		        Gn3 , v060
	.byte	W02
	.byte		        Gn3 , v032
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song104_1:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 50*song104_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		N02   , Gn4 , v060
	.byte	W02
	.byte		N01   , Gn4 , v032
	.byte	W01
	.byte		N02   , Dn4 , v060
	.byte	W02
	.byte	W01
	.byte		N01   , Dn4 , v032
	.byte	W01
	.byte		N02   , Gn4 , v060
	.byte	W02
	.byte		        Gn4 , v032
	.byte	W02
	.byte	W01
	.byte		        Gn3 , v060
	.byte	W02
	.byte		        Gn3 , v032
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song104:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song104_pri	@ Priority
	.byte	song104_rev	@ Reverb.

	.word	song104_grp

	.word	song104_0
	.word	song104_1

	.end
