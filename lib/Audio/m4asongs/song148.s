@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song148_grp, group_6
	.equ	song148_pri, 4
	.equ	song148_rev, 178
	.equ	song148_mvl, 127
	.equ	song148_key, 0
	.equ	song148_tbs, 1
	.equ	song148_exg, 1
	.equ	song148_cmp, 1

	.text
	.global	song148
	.align	2

@**************** Track 00 ****************************@

song148_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+14
	.byte		VOL   , 42*song148_mvl/mxv
	.byte		BEND  , c_v+39
	.byte		N10   , Gn5 , v092
	.byte	W01
	.byte		VOL   , 55*song148_mvl/mxv
	.byte	W01
	.byte		        71*song148_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		PAN   , c_v-15
	.byte		VOL   , 86*song148_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 110*song148_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-34
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		VOICE , 21
	.byte		BEND  , c_v+63
	.byte		N01   , Cn5 
	.byte	W02
	.byte		        Gn5 
	.byte	W02
	.byte		        Gn5 , v064
	.byte	W10
	.byte	FINE

@******************************************************@
	.align	2

song148:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song148_pri	@ Priority
	.byte	song148_rev	@ Reverb.

	.word	song148_grp

	.word	song148_0

	.end
