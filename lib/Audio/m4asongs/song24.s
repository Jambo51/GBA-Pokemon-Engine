@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song24_grp, group_5
	.equ	song24_pri, 4
	.equ	song24_rev, 178
	.equ	song24_mvl, 127
	.equ	song24_key, 0
	.equ	song24_tbs, 1
	.equ	song24_exg, 1
	.equ	song24_cmp, 1

	.text
	.global	song24
	.align	2

@**************** Track 00 ****************************@

song24_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 48
	.byte		PAN   , c_v+1
	.byte		VOL   , 110*song24_mvl/mxv
	.byte		N06   , Cn3 , v060
	.byte	W06
	.byte		N13   , Gn3 
	.byte	W06
	.byte	W01
	.byte		VOL   , 105*song24_mvl/mxv
	.byte	W01
	.byte		        100*song24_mvl/mxv
	.byte	W01
	.byte		        89*song24_mvl/mxv
	.byte	W01
	.byte		        72*song24_mvl/mxv
	.byte	W02
	.byte		        55*song24_mvl/mxv
	.byte	W01
	.byte		        38*song24_mvl/mxv
	.byte	W01
	.byte		        22*song24_mvl/mxv
	.byte	W01
	.byte		        110*song24_mvl/mxv
	.byte		N12   , Gn3 , v032
	.byte	W03
	.byte	W01
	.byte		VOL   , 100*song24_mvl/mxv
	.byte	W01
	.byte		        91*song24_mvl/mxv
	.byte	W01
	.byte		        75*song24_mvl/mxv
	.byte	W01
	.byte		        43*song24_mvl/mxv
	.byte	W02
	.byte		        24*song24_mvl/mxv
	.byte	W01
	.byte		        9*song24_mvl/mxv
	.byte	W05
	.byte	FINE

@**************** Track 01 ****************************@

song24_1:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		VOL   , 110*song24_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn3 , v060
	.byte	W06
	.byte		N13   , Gn3 
	.byte	W06
	.byte	W09
	.byte		PAN   , c_v-48
	.byte		N12   , Gn3 , v032
	.byte	W03
	.byte	W12
	.byte	FINE

@**************** Track 02 ****************************@

song24_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		VOL   , 110*song24_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Gn2 , v060
	.byte	W06
	.byte		N13   , Cn3 
	.byte	W06
	.byte	W09
	.byte		PAN   , c_v+48
	.byte		N12   , Cn3 , v032
	.byte	W03
	.byte	W12
	.byte	FINE

@**************** Track 03 ****************************@

song24_3:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		VOL   , 110*song24_mvl/mxv
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N13   , Cn2 
	.byte	W06
	.byte	W12
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song24:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song24_pri	@ Priority
	.byte	song24_rev	@ Reverb.

	.word	song24_grp

	.word	song24_0
	.word	song24_1
	.word	song24_2
	.word	song24_3

	.end
