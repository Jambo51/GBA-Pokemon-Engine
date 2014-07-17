@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song216_grp, group_6
	.equ	song216_pri, 4
	.equ	song216_rev, 178
	.equ	song216_mvl, 127
	.equ	song216_key, 0
	.equ	song216_tbs, 1
	.equ	song216_exg, 1
	.equ	song216_cmp, 1

	.section .rodata
	.global	song216
	.align	2

@**************** Track 00 ****************************@

song216_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 60
	.byte		BENDR , 12
	.byte		VOL   , 25*song216_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v127
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 34*song216_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 46*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 56*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 70*song216_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 80*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 88*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		VOL   , 96*song216_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		        c_v+2
	.byte	W02
	.byte		VOL   , 100*song216_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte	PEND
	.byte	PATT
	 .word	song216_0 + 0x5B
	.byte	PATT
	 .word	song216_0 + 0x5B
	.byte	PATT
	 .word	song216_0 + 0x5B
	.byte	PATT
	 .word	song216_0 + 0x5B
	.byte	PATT
	 .word	song216_0 + 0x5B
	.byte	PATT
	 .word	song216_0 + 0x5B
	.byte		VOL   , 96*song216_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 92*song216_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 84*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 72*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		VOL   , 63*song216_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		VOL   , 52*song216_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 37*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		VOL   , 22*song216_mvl/mxv
	.byte	W01
	.byte		        12*song216_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		EOT   , Cn3 
	.byte	FINE

@******************************************************@
	.align	2

song216:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song216_pri	@ Priority
	.byte	song216_rev	@ Reverb.

	.word	song216_grp

	.word	song216_0

	.end
