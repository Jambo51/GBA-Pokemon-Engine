@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song227_grp, group_6
	.equ	song227_pri, 4
	.equ	song227_rev, 178
	.equ	song227_mvl, 127
	.equ	song227_key, 0
	.equ	song227_tbs, 1
	.equ	song227_exg, 1
	.equ	song227_cmp, 1

	.section .rodata
	.global	song227
	.align	2

@**************** Track 00 ****************************@

song227_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song227_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cs2 , v127
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		N03   , Cn2 , v120
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N03   , Bn1 , v116
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N03   , Cn2 , v112
	.byte	W02
	.byte	W02
	.byte		PAN   , c_v-11
	.byte		N03   , Cs2 , v108
	.byte	W04
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		N03   , Cs2 , v116
	.byte	W03
	.byte	PEND
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N03   , Cs2 , v108
	.byte	W02
	.byte	PEND
	.byte	W02
	.byte		PAN   , c_v-11
	.byte		N03   , Cn2 , v100
	.byte	W04
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N03   , Cs2 , v116
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte	PEND
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N03   , Cs2 , v108
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N03   , Cn2 , v100
	.byte	W02
	.byte	PEND
	.byte	W02
	.byte		PAN   , c_v-11
	.byte		N03   , Cs2 , v116
	.byte	W04
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		N03   , Cs2 , v108
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N03   , Cs2 , v116
	.byte	W02
	.byte	W02
	.byte		PAN   , c_v-11
	.byte		N03   , Cn2 , v112
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		N03   , Cs2 , v108
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte	PEND
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N03   , Cs2 , v116
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N03   , Cn2 , v112
	.byte	W02
	.byte	PEND
	.byte	PATT
	 .word	song227_0 + 0x25
	.byte	PATT
	 .word	song227_0 + 0x2D
	.byte	PATT
	 .word	song227_0 + 0x3A
	.byte	PATT
	 .word	song227_0 + 0x48
	.byte	PATT
	 .word	song227_0 + 0x93
	.byte	PATT
	 .word	song227_0 + 0xA0
	.byte	PATT
	 .word	song227_0 + 0x25
	.byte	PATT
	 .word	song227_0 + 0x2D
	.byte	PATT
	 .word	song227_0 + 0x3A
	.byte	PATT
	 .word	song227_0 + 0x48
	.byte	PATT
	 .word	song227_0 + 0x50
	.byte	PATT
	 .word	song227_0 + 0x5D
	.byte	PATT
	 .word	song227_0 + 0x6B
	.byte		VOL   , 106*song227_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		VOL   , 103*song227_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		N03   , Cs2 , v108
	.byte	W03
	.byte	W01
	.byte		VOL   , 97*song227_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte		VOL   , 89*song227_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		N03   , Cs2 , v116
	.byte	W02
	.byte	W02
	.byte		VOL   , 85*song227_mvl/mxv
	.byte		PAN   , c_v-11
	.byte		N03   , Cn2 , v112
	.byte	W04
	.byte		VOL   , 78*song227_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cs2 , v108
	.byte	W03
	.byte		VOL   , 72*song227_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte	W01
	.byte		VOL   , 66*song227_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N03   , Cs2 , v116
	.byte	W03
	.byte		VOL   , 58*song227_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		N03   , Cn2 , v112
	.byte	W02
	.byte	W02
	.byte		VOL   , 46*song227_mvl/mxv
	.byte		PAN   , c_v-11
	.byte		N03   , Cs2 , v108
	.byte	W04
	.byte		VOL   , 30*song227_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte		VOL   , 12*song227_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song227_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song227_mvl/mxv
	.byte		N02   , Fn2 , v072
	.byte	W02
	.byte		N01
	.byte	W01
	.byte		N02   , Gn2 
	.byte	W03
	.byte		N01   , Gs2 , v060
	.byte	W06
	.byte		VOICE , 27
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte	PEND
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song227_1 + 0x1B
	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 106*song227_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06
	.byte	W03
	.byte		VOL   , 103*song227_mvl/mxv
	.byte	W03
	.byte		N06
	.byte	W01
	.byte		VOL   , 97*song227_mvl/mxv
	.byte	W03
	.byte		        89*song227_mvl/mxv
	.byte	W02
	.byte		N06
	.byte	W02
	.byte		VOL   , 85*song227_mvl/mxv
	.byte	W04
	.byte		        78*song227_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06
	.byte	W03
	.byte		VOL   , 72*song227_mvl/mxv
	.byte	W03
	.byte		N06
	.byte	W01
	.byte		VOL   , 66*song227_mvl/mxv
	.byte	W03
	.byte		        58*song227_mvl/mxv
	.byte	W02
	.byte		N06
	.byte	W02
	.byte		VOL   , 46*song227_mvl/mxv
	.byte	W04
	.byte		        30*song227_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06
	.byte	W03
	.byte		VOL   , 12*song227_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song227:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song227_pri	@ Priority
	.byte	song227_rev	@ Reverb.

	.word	song227_grp

	.word	song227_0
	.word	song227_1

	.end
