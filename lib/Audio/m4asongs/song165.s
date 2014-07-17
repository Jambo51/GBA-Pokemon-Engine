@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song165_grp, group_6
	.equ	song165_pri, 4
	.equ	song165_rev, 178
	.equ	song165_mvl, 127
	.equ	song165_key, 0
	.equ	song165_tbs, 1
	.equ	song165_exg, 1
	.equ	song165_cmp, 1

	.section .rodata
	.global	song165
	.align	2

@**************** Track 00 ****************************@

song165_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 73
	.byte		BENDR , 12
	.byte		LFOS  , 40
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N44   , Gn4 , v112
	.byte	W06
	.byte	W06
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte	W03
	.byte		VOL   , 83*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        69*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        50*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        24*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		N21   , Fn5 
	.byte	W06
	.byte	W06
	.byte		VOL   , 86*song165_mvl/mxv
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 75*song165_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		VOL   , 55*song165_mvl/mxv
	.byte	W03
	.byte		        26*song165_mvl/mxv
	.byte		MOD   , 0
	.byte	W03
	.byte	PEND
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		N21   , Ds5 , v112
	.byte	W06
	.byte	W06
	.byte	PATT
	 .word	song165_0 + 0x30
	.byte	PATT
	 .word	song165_0 + 0x39
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		N66   , Gn4 , v112
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		VOL   , 83*song165_mvl/mxv
	.byte	W06
	.byte		        69*song165_mvl/mxv
	.byte	W06
	.byte		        50*song165_mvl/mxv
	.byte	W06
	.byte		        24*song165_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song165_1:
	.byte	KEYSH , 0
	.byte		VOICE , 73
	.byte		LFOS  , 40
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W06
	.byte	W06
	.byte		PAN   , c_v+12
	.byte		N44   , Gn4 , v060
	.byte	W06
	.byte	W06
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte	W03
	.byte		VOL   , 83*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        69*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        50*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        24*song165_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N21   , Fn5 
	.byte	W06
	.byte	W06
	.byte		VOL   , 86*song165_mvl/mxv
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 75*song165_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		VOL   , 55*song165_mvl/mxv
	.byte	W03
	.byte		        26*song165_mvl/mxv
	.byte		MOD   , 0
	.byte	W03
	.byte	PEND
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		PAN   , c_v+12
	.byte		N21   , Ds5 , v060
	.byte	W06
	.byte	W06
	.byte	PATT
	 .word	song165_1 + 0x30
	.byte	PATT
	 .word	song165_1 + 0x39
	.byte		VOL   , 95*song165_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N66   , Gn4 , v060
	.byte	W06
	.byte	W06
	.byte		PAN   , c_v-8
	.byte	W06
	.byte	W06
	.byte		MOD   , 7
	.byte		PAN   , c_v+0
	.byte	W06
	.byte	W06
	.byte		        c_v+7
	.byte	W06
	.byte		VOL   , 83*song165_mvl/mxv
	.byte	W06
	.byte		        69*song165_mvl/mxv
	.byte		PAN   , c_v+15
	.byte	W06
	.byte		VOL   , 50*song165_mvl/mxv
	.byte	W06
	.byte		        24*song165_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W06
	.byte		MOD   , 0
	.byte	FINE

@******************************************************@
	.align	2

song165:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song165_pri	@ Priority
	.byte	song165_rev	@ Reverb.

	.word	song165_grp

	.word	song165_0
	.word	song165_1

	.end
