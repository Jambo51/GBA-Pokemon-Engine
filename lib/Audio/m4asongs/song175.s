@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song175_grp, group_6
	.equ	song175_pri, 4
	.equ	song175_rev, 178
	.equ	song175_mvl, 127
	.equ	song175_key, 0
	.equ	song175_tbs, 1
	.equ	song175_exg, 1
	.equ	song175_cmp, 1

	.section .rodata
	.global	song175
	.align	2

@**************** Track 00 ****************************@

song175_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 9
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		VOL   , 24*song175_mvl/mxv
	.byte		BEND  , c_v-17
	.byte		N78   , Bn4 , v080
	.byte	W01
	.byte		VOL   , 32*song175_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		VOL   , 38*song175_mvl/mxv
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		VOL   , 48*song175_mvl/mxv
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		VOL   , 66*song175_mvl/mxv
	.byte		PAN   , c_v-13
	.byte	W02
	.byte		VOL   , 78*song175_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		VOL   , 94*song175_mvl/mxv
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		VOL   , 110*song175_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte	PEND
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte	PEND
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte	PATT
	 .word	song175_0 + 0x39
	.byte	PATT
	 .word	song175_0 + 0x45
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		VOL   , 103*song175_mvl/mxv
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		VOL   , 91*song175_mvl/mxv
	.byte		PAN   , c_v+9
	.byte	W02
	.byte		VOL   , 72*song175_mvl/mxv
	.byte		PAN   , c_v-13
	.byte	W01
	.byte		VOL   , 58*song175_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		VOL   , 38*song175_mvl/mxv
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		VOL   , 15*song175_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 7*song175_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song175:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song175_pri	@ Priority
	.byte	song175_rev	@ Reverb.

	.word	song175_grp

	.word	song175_0

	.end
