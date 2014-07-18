@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song249_grp, group_7
	.equ	song249_pri, 5
	.equ	song249_rev, 178
	.equ	song249_mvl, 127
	.equ	song249_key, 0
	.equ	song249_tbs, 1
	.equ	song249_exg, 1
	.equ	song249_cmp, 1

	.text
	.global	song249
	.align	2

@**************** Track 00 ****************************@

song249_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 82
	.byte		VOICE , 9
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 96*song249_mvl/mxv
	.byte		MOD   , 1
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		N10   , En2 , v104
	.byte	W20
	.byte	W10
	.byte		PAN   , c_v-64
	.byte		TIE   , En2 , v127
	.byte	W08
	.byte		PAN   , c_v-48
	.byte	W06
	.byte	W02
	.byte		        c_v-32
	.byte	W08
	.byte		        c_v-16
	.byte	W08
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+31
	.byte	W06
	.byte		        c_v+48
	.byte	W06
	.byte		        c_v+63
	.byte	W06
	.byte	W18
	.byte		        c_v+47
	.byte	W06
	.byte		        c_v+40
	.byte	W06
	.byte		        c_v+30
	.byte	W06
	.byte		        c_v+10
	.byte	W06
	.byte		        c_v-11
	.byte	W06
	.byte		        c_v-25
	.byte	W06
	.byte		        c_v-34
	.byte	W06
	.byte		        c_v-50
	.byte	W06
	.byte		        c_v-64
	.byte	W06
	.byte	W18
	.byte		VOL   , 80*song249_mvl/mxv
	.byte		PAN   , c_v-52
	.byte	W06
	.byte		VOL   , 72*song249_mvl/mxv
	.byte		PAN   , c_v-41
	.byte	W06
	.byte		VOL   , 64*song249_mvl/mxv
	.byte		PAN   , c_v-29
	.byte	W06
	.byte		VOL   , 53*song249_mvl/mxv
	.byte		PAN   , c_v-18
	.byte	W06
	.byte		VOL   , 48*song249_mvl/mxv
	.byte		PAN   , c_v+15
	.byte	W06
	.byte		VOL   , 42*song249_mvl/mxv
	.byte		PAN   , c_v+25
	.byte	W06
	.byte		VOL   , 32*song249_mvl/mxv
	.byte		PAN   , c_v+40
	.byte	W02
	.byte		VOL   , 24*song249_mvl/mxv
	.byte	W04
	.byte		        16*song249_mvl/mxv
	.byte		PAN   , c_v+47
	.byte	W04
	.byte		VOL   , 8*song249_mvl/mxv
	.byte	W02
	.byte		EOT
	.byte		VOL   , 0*song249_mvl/mxv
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song249_1:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		MOD   , 15
	.byte		VOL   , 48*song249_mvl/mxv
	.byte		N04   , En1 , v127
	.byte	W04
	.byte		N10   , En1 , v104
	.byte	W20
	.byte	W10
	.byte		TIE   , En1 , v127
	.byte	W14
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W18
	.byte		VOL   , 42*song249_mvl/mxv
	.byte	W06
	.byte		        36*song249_mvl/mxv
	.byte	W06
	.byte		        32*song249_mvl/mxv
	.byte	W06
	.byte		        26*song249_mvl/mxv
	.byte	W06
	.byte		        23*song249_mvl/mxv
	.byte	W06
	.byte		        15*song249_mvl/mxv
	.byte	W06
	.byte		        13*song249_mvl/mxv
	.byte	W06
	.byte		        8*song249_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte		VOL   , 0*song249_mvl/mxv
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song249:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song249_pri	@ Priority
	.byte	song249_rev	@ Reverb.

	.word	song249_grp

	.word	song249_0
	.word	song249_1

	.end
