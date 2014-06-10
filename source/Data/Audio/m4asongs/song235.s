@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song235_grp, group_6
	.equ	song235_pri, 4
	.equ	song235_rev, 178
	.equ	song235_mvl, 127
	.equ	song235_key, 0
	.equ	song235_tbs, 1
	.equ	song235_exg, 1
	.equ	song235_cmp, 1

	.section .rodata
	.global	song235
	.align	2

@**************** Track 00 ****************************@

song235_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 3
	.byte		VOL   , 100*song235_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Fn4 , v112
	.byte	W04
	.byte		PAN   , c_v+6
	.byte		N02   , Ds5 , v040
	.byte	W02
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		N01   , Gn4 , v112
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Ds5 
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		N02   , Ds5 , v020
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		N01   , Gn4 , v064
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		N01   , Ds5 
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N02   , Ds5 , v020
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-13
	.byte		N01   , Gn4 , v064
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Ds5 
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song235_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 100*song235_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Dn4 , v040
	.byte	W04
	.byte		        Bn3 
	.byte	W02
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte	W01
	.byte		        Bn3 , v032
	.byte	W05
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 , v012
	.byte	W03
	.byte	W02
	.byte		        Dn4 
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song235:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song235_pri	@ Priority
	.byte	song235_rev	@ Reverb.

	.word	song235_grp

	.word	song235_0
	.word	song235_1

	.end
