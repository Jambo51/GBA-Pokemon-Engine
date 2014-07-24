@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song98_grp, group_6
	.equ	song98_pri, 5
	.equ	song98_rev, 178
	.equ	song98_mvl, 127
	.equ	song98_key, 0
	.equ	song98_tbs, 1
	.equ	song98_exg, 1
	.equ	song98_cmp, 1

	.section .rodata
	.global	song98
	.align	2

@**************** Track 00 ****************************@

song98_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 60
	.byte		BENDR , 12
	.byte		VOL   , 25*song98_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		TIE   , Bn2 , v127
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 34*song98_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 46*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 56*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 70*song98_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 80*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 88*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		VOL   , 96*song98_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		        c_v+2
	.byte	W02
	.byte		VOL   , 100*song98_mvl/mxv
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
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte	PATT
	 .word	song98_0 + 0x5B
	.byte		VOL   , 96*song98_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 92*song98_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 84*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 72*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		VOL   , 63*song98_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		VOL   , 52*song98_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 37*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		VOL   , 22*song98_mvl/mxv
	.byte	W01
	.byte		        12*song98_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		EOT   , Bn2 
	.byte	FINE

@******************************************************@
	.align	2

song98:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song98_pri	@ Priority
	.byte	song98_rev	@ Reverb.

	.word	song98_grp

	.word	song98_0

	.end
