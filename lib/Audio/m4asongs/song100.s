@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song100_grp, group_6
	.equ	song100_pri, 5
	.equ	song100_rev, 178
	.equ	song100_mvl, 127
	.equ	song100_key, 0
	.equ	song100_tbs, 1
	.equ	song100_exg, 1
	.equ	song100_cmp, 1

	.section .rodata
	.global	song100
	.align	2

@**************** Track 00 ****************************@

song100_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 15
	.byte		BENDR , 12
	.byte		VOL   , 100*song100_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+30
	.byte		TIE   , Cn4 , v100
	.byte	W01
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte	W04
	.byte		        c_v+1
	.byte	W02
	.byte	W06
	.byte		        c_v+1
	.byte	W06
	.byte		        c_v+1
	.byte	W06
	.byte		        c_v+2
	.byte	W06
	.byte		        c_v+3
	.byte	W06
	.byte		        c_v+3
	.byte	W06
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+5
	.byte	W06
	.byte		        c_v+6
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte		        c_v+10
	.byte	W06
	.byte		        c_v+12
	.byte	W06
	.byte		        c_v+14
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+18
	.byte	W06
	.byte		        c_v+20
	.byte	W06
	.byte		VOL   , 98*song100_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W03
	.byte		VOL   , 97*song100_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 94*song100_mvl/mxv
	.byte	W03
	.byte		        91*song100_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+26
	.byte	W02
	.byte		VOL   , 88*song100_mvl/mxv
	.byte	W02
	.byte		        85*song100_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+28
	.byte	W02
	.byte		VOL   , 80*song100_mvl/mxv
	.byte	W02
	.byte		        73*song100_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 68*song100_mvl/mxv
	.byte	W02
	.byte		        62*song100_mvl/mxv
	.byte	W03
	.byte		        55*song100_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W02
	.byte		VOL   , 47*song100_mvl/mxv
	.byte	W02
	.byte		        37*song100_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 30*song100_mvl/mxv
	.byte	W01
	.byte		        20*song100_mvl/mxv
	.byte	W01
	.byte		        13*song100_mvl/mxv
	.byte	W01
	.byte		        4*song100_mvl/mxv
	.byte	W02
	.byte		EOT
	.byte	FINE

@**************** Track 01 ****************************@

song100_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		VOL   , 15*song100_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		TIE   , Gs2 , v060
	.byte	W01
	.byte		VOL   , 21*song100_mvl/mxv
	.byte	W01
	.byte		        33*song100_mvl/mxv
	.byte	W01
	.byte		        41*song100_mvl/mxv
	.byte	W01
	.byte		        49*song100_mvl/mxv
	.byte	W02
	.byte		        55*song100_mvl/mxv
	.byte	W01
	.byte		        61*song100_mvl/mxv
	.byte	W01
	.byte		        69*song100_mvl/mxv
	.byte	W01
	.byte		        76*song100_mvl/mxv
	.byte	W01
	.byte		        80*song100_mvl/mxv
	.byte	W02
	.byte		        86*song100_mvl/mxv
	.byte	W01
	.byte		        90*song100_mvl/mxv
	.byte	W01
	.byte		        100*song100_mvl/mxv
	.byte	W04
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W01
	.byte		BEND  , c_v+1
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W02
	.byte		        c_v+2
	.byte	W04
	.byte	W01
	.byte		        c_v+4
	.byte	W05
	.byte		        c_v+5
	.byte	W03
	.byte		VOL   , 97*song100_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		VOL   , 94*song100_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 87*song100_mvl/mxv
	.byte	W02
	.byte		        83*song100_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W02
	.byte	W01
	.byte		VOL   , 77*song100_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W02
	.byte		VOL   , 66*song100_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W03
	.byte		VOL   , 55*song100_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W02
	.byte		VOL   , 45*song100_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W02
	.byte		VOL   , 33*song100_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		VOL   , 21*song100_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		VOL   , 11*song100_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 5*song100_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W02
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song100:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song100_pri	@ Priority
	.byte	song100_rev	@ Reverb.

	.word	song100_grp

	.word	song100_0
	.word	song100_1

	.end
