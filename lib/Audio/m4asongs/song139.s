@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song139_grp, group_6
	.equ	song139_pri, 4
	.equ	song139_rev, 178
	.equ	song139_mvl, 127
	.equ	song139_key, 0
	.equ	song139_tbs, 1
	.equ	song139_exg, 1
	.equ	song139_cmp, 1

	.text
	.global	song139
	.align	2

@**************** Track 00 ****************************@

song139_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		VOL   , 110*song139_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+50
	.byte		TIE   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v+32
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+16
	.byte	W02
	.byte		        c_v-8
	.byte	W02
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		PAN   , c_v-9
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+2
	.byte	W04
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+16
	.byte	W03
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W04
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v-9
	.byte	W04
	.byte		        c_v+4
	.byte	W04
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		        c_v-5
	.byte	W04
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v-9
	.byte	W04
	.byte		        c_v+4
	.byte	W04
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song139_0 + 0x4B
	.byte	PATT
	 .word	song139_0 + 0x4B
	.byte	PATT
	 .word	song139_0 + 0x4B
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		VOL   , 103*song139_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		VOL   , 96*song139_mvl/mxv
	.byte		PAN   , c_v-9
	.byte	W04
	.byte		        c_v+4
	.byte	W02
	.byte		VOL   , 88*song139_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 73*song139_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		VOL   , 62*song139_mvl/mxv
	.byte		PAN   , c_v-5
	.byte	W04
	.byte		        c_v+8
	.byte	W01
	.byte		VOL   , 47*song139_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-9
	.byte	W03
	.byte		VOL   , 27*song139_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+4
	.byte	W04
	.byte		VOL   , 10*song139_mvl/mxv
	.byte		PAN   , c_v-5
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		EOT   , Cn3 
	.byte	FINE

@**************** Track 01 ****************************@

song139_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song139_mvl/mxv
	.byte		N24   , Fn2 , v060
	.byte	W10
	.byte		VOL   , 99*song139_mvl/mxv
	.byte	W05
	.byte		        82*song139_mvl/mxv
	.byte	W04
	.byte		        54*song139_mvl/mxv
	.byte	W02
	.byte		        25*song139_mvl/mxv
	.byte	W03
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song139:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song139_pri	@ Priority
	.byte	song139_rev	@ Reverb.

	.word	song139_grp

	.word	song139_0
	.word	song139_1

	.end
