@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song27_grp, group_6
	.equ	song27_pri, 5
	.equ	song27_rev, 178
	.equ	song27_mvl, 127
	.equ	song27_key, 0
	.equ	song27_tbs, 1
	.equ	song27_exg, 1
	.equ	song27_cmp, 1

	.text
	.global	song27
	.align	2

@**************** Track 00 ****************************@

song27_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 19
	.byte		BENDR , 26
	.byte		VOL   , 80*song27_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		TIE   , Fn3 , v112
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		VOL   , 71*song27_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		VOL   , 50*song27_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte		VOL   , 51*song27_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W02
	.byte		VOL   , 52*song27_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 52*song27_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		VOL   , 54*song27_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		VOL   , 55*song27_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		VOL   , 56*song27_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+17
	.byte	W02
	.byte		VOL   , 57*song27_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		VOL   , 57*song27_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		VOL   , 59*song27_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		VOL   , 60*song27_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		VOL   , 61*song27_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		VOL   , 62*song27_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		VOL   , 62*song27_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		VOL   , 64*song27_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		        c_v+35
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		VOL   , 65*song27_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+35
	.byte	W02
	.byte		        c_v+39
	.byte	W01
	.byte		VOL   , 66*song27_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte	W02
	.byte		VOL   , 67*song27_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		VOL   , 68*song27_mvl/mxv
	.byte		BEND  , c_v+44
	.byte	W02
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		VOL   , 69*song27_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		VOL   , 70*song27_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		VOL   , 71*song27_mvl/mxv
	.byte		BEND  , c_v+51
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+53
	.byte	W02
	.byte		VOL   , 72*song27_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 73*song27_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W02
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 74*song27_mvl/mxv
	.byte		BEND  , c_v+58
	.byte	W01
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		VOL   , 75*song27_mvl/mxv
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+62
	.byte	W02
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 76*song27_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+61
	.byte	W02
	.byte		VOL   , 77*song27_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 78*song27_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W02
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		VOL   , 79*song27_mvl/mxv
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song27:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song27_pri	@ Priority
	.byte	song27_rev	@ Reverb.

	.word	song27_grp

	.word	song27_0

	.end
