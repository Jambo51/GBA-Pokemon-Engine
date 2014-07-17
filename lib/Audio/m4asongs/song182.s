@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song182_grp, group_6
	.equ	song182_pri, 4
	.equ	song182_rev, 178
	.equ	song182_mvl, 127
	.equ	song182_key, 0
	.equ	song182_tbs, 1
	.equ	song182_exg, 1
	.equ	song182_cmp, 1

	.section .rodata
	.global	song182
	.align	2

@**************** Track 00 ****************************@

song182_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 95
	.byte		VOICE , 45
	.byte		BENDR , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song182_mvl/mxv
	.byte		MOD   , 30
	.byte		BEND  , c_v+1
	.byte		N42   , As2 , v120
	.byte	W01
	.byte		PAN   , c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		VOL   , 57*song182_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		VOL   , 71*song182_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v+1
	.byte		VOL   , 82*song182_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-3
	.byte		VOL   , 94*song182_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W02
	.byte		        c_v-10
	.byte		VOL   , 110*song182_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte	W06
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+1
	.byte		VOL   , 95*song182_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-3
	.byte		VOL   , 83*song182_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v-10
	.byte		VOL   , 71*song182_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 56*song182_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		VOL   , 38*song182_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	FINE

@**************** Track 01 ****************************@

song182_1:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		BENDR , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song182_mvl/mxv
	.byte		MOD   , 30
	.byte		BEND  , c_v+1
	.byte		N42   , As1 , v040
	.byte	W02
	.byte		VOL   , 57*song182_mvl/mxv
	.byte	W02
	.byte		        71*song182_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        82*song182_mvl/mxv
	.byte	W02
	.byte		        94*song182_mvl/mxv
	.byte	W03
	.byte		        110*song182_mvl/mxv
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        95*song182_mvl/mxv
	.byte	W02
	.byte		        83*song182_mvl/mxv
	.byte	W02
	.byte		        71*song182_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        56*song182_mvl/mxv
	.byte	W02
	.byte		        38*song182_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song182:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song182_pri	@ Priority
	.byte	song182_rev	@ Reverb.

	.word	song182_grp

	.word	song182_0
	.word	song182_1

	.end
