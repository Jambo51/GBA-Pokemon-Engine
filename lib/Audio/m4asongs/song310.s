@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song310_grp, group_46
	.equ	song310_pri, 0
	.equ	song310_rev, 178
	.equ	song310_mvl, 127
	.equ	song310_key, 0
	.equ	song310_tbs, 1
	.equ	song310_exg, 1
	.equ	song310_cmp, 1

	.section .rodata
	.global	song310
	.align	2

@**************** Track 00 ****************************@

song310_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 68
	.byte	W08
	.byte		VOICE , 56
	.byte		PAN   , c_v-16
	.byte		VOL   , 87*song310_mvl/mxv
	.byte		N02   , Dn3 , v112
	.byte	W02
	.byte		        Ds3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		N04   , Fs3 
	.byte	W04
	.byte		        Fs3 , v036
	.byte	W04
	.byte		N02   , Fs3 , v112
	.byte	W02
	.byte		N04   , Fs3 , v036
	.byte	W06
	.byte		N02   , Fs3 , v112
	.byte	W02
	.byte		N04   , Fs3 , v036
	.byte	W06
	.byte		N02   , Fs3 , v112
	.byte	W02
	.byte		N04   , Fs3 , v036
	.byte	W06
	.byte		N02   , Gn3 , v112
	.byte	W02
	.byte		N04   , Gn3 , v036
	.byte	W06
	.byte		N08   , An3 , v112
	.byte	W08
	.byte		VOL   , 34*song310_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W02
	.byte		VOL   , 36*song310_mvl/mxv
	.byte	W02
	.byte		        39*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        48*song310_mvl/mxv
	.byte	W02
	.byte		        53*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        70*song310_mvl/mxv
	.byte	W02
	.byte		        76*song310_mvl/mxv
	.byte	W02
	.byte		        83*song310_mvl/mxv
	.byte	W02
	.byte		        89*song310_mvl/mxv
	.byte	W02
	.byte		        87*song310_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N08   , Gn4 , v096
	.byte	W08
	.byte		N02   , Fs4 , v060
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		VOICE , 17
	.byte		N04   , Dn4 , v112
	.byte	W02
	.byte		PAN   , c_v-16
	.byte	W02
	.byte		N04   , En4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song310_0 + 0x76
	.byte	FINE

@**************** Track 01 ****************************@

song310_1:
	.byte	KEYSH , 0
	.byte	W08
	.byte		VOICE , 17
	.byte		PAN   , c_v+0
	.byte		VOL   , 83*song310_mvl/mxv
	.byte	W08
	.byte	W84
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        58*song310_mvl/mxv
	.byte		N08   , As3 , v096
	.byte	W02
	.byte		VOL   , 68*song310_mvl/mxv
	.byte	W02
	.byte		        73*song310_mvl/mxv
	.byte	W02
	.byte		        79*song310_mvl/mxv
	.byte	W02
	.byte		VOL   , 54*song310_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Bn3 , v096
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        Dn3 , v064
	.byte	W04
	.byte		        Dn3 , v036
	.byte	W04
	.byte		        Gn3 , v064
	.byte	W04
	.byte		N02   , Gn3 , v036
	.byte	W02
	.byte		        An3 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , En4 
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		        En3 , v064
	.byte	W04
	.byte		        En3 , v036
	.byte	W04
	.byte		        An3 , v064
	.byte	W04
	.byte		N02   , An3 , v036
	.byte	W02
	.byte		        Ds4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , En4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Dn4 
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		        Bn3 , v064
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		        En4 , v036
	.byte	W02
	.byte		N02   , Gn4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Cn4 
	.byte	W04
	.byte		        Cn4 , v036
	.byte	W04
	.byte		        Gn3 , v064
	.byte	W04
	.byte		        Gn3 , v036
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W02
	.byte		N02   , Fn4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , En4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        Dn3 , v064
	.byte	W04
	.byte		        Dn3 , v036
	.byte	W04
	.byte		        Gn3 , v064
	.byte	W04
	.byte		N02   , Gn3 , v036
	.byte	W02
	.byte		        As3 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , En4 
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		        En3 , v064
	.byte	W04
	.byte		        En3 , v036
	.byte	W04
	.byte		        An3 , v064
	.byte	W04
	.byte		N02   , An3 , v036
	.byte	W02
	.byte		        Ds4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , En4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Dn4 
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		        Bn3 , v096
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		N02   , En4 , v036
	.byte	W02
	.byte		        Gn4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Gn4 
	.byte	W04
	.byte		        Gn4 , v036
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		N02   , En4 , v036
	.byte	W02
	.byte		        Gn4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        Dn3 , v064
	.byte	W04
	.byte		        Dn3 , v036
	.byte	W04
	.byte		        Gn3 , v064
	.byte	W04
	.byte		N02   , Gn3 , v036
	.byte	W02
	.byte		        An3 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , En4 
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		        En3 , v064
	.byte	W04
	.byte		        En3 , v036
	.byte	W04
	.byte		        An3 , v064
	.byte	W04
	.byte		N02   , An3 , v036
	.byte	W02
	.byte		        Ds4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , En4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , Dn4 
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		        Fn3 , v064
	.byte	W04
	.byte		        Fn3 , v036
	.byte	W04
	.byte		        As3 , v064
	.byte	W04
	.byte		N02   , As3 , v036
	.byte	W02
	.byte		        Ds4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , Dn4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N04   , En4 
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		        Gn3 , v064
	.byte	W04
	.byte		        Gn3 , v036
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		N02   , Cn4 , v036
	.byte	W02
	.byte		        Fn4 , v096
	.byte	W02
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N22   , En4 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 22*song310_mvl/mxv
	.byte		N02   , Ds4 
	.byte	W02
	.byte		VOL   , 22*song310_mvl/mxv
	.byte		N44   , Dn4 
	.byte	W02
	.byte		VOL   , 24*song310_mvl/mxv
	.byte	W02
	.byte		        24*song310_mvl/mxv
	.byte	W02
	.byte		        26*song310_mvl/mxv
	.byte	W02
	.byte		        27*song310_mvl/mxv
	.byte	W02
	.byte		        29*song310_mvl/mxv
	.byte	W04
	.byte		        31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        35*song310_mvl/mxv
	.byte	W02
	.byte		        39*song310_mvl/mxv
	.byte	W02
	.byte		        41*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        50*song310_mvl/mxv
	.byte	W02
	.byte		        53*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W06
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N02
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte		N02
	.byte	W02
	.byte		VOL   , 43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte		N02
	.byte	W02
	.byte		VOL   , 51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte		N02
	.byte	W02
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte		N02
	.byte	W08
	.byte		N08   , Ds4 
	.byte	W08
	.byte		N04   , Dn4 
	.byte	W08
	.byte		VOL   , 22*song310_mvl/mxv
	.byte		N02
	.byte	W02
	.byte		VOL   , 22*song310_mvl/mxv
	.byte		N44   , Cs4 
	.byte	W02
	.byte		VOL   , 24*song310_mvl/mxv
	.byte	W02
	.byte		        24*song310_mvl/mxv
	.byte	W02
	.byte		        26*song310_mvl/mxv
	.byte	W02
	.byte		        27*song310_mvl/mxv
	.byte	W02
	.byte		        29*song310_mvl/mxv
	.byte	W04
	.byte		        31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        35*song310_mvl/mxv
	.byte	W02
	.byte		        39*song310_mvl/mxv
	.byte	W02
	.byte		        41*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        50*song310_mvl/mxv
	.byte	W02
	.byte		        53*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W06
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		VOL   , 29*song310_mvl/mxv
	.byte		N24   , An3 
	.byte	W02
	.byte		VOL   , 31*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        37*song310_mvl/mxv
	.byte	W02
	.byte		        40*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N16   , Bn3 
	.byte	W16
	.byte		N08   , An3 
	.byte	W08
	.byte	GOTO
	 .word	song310_1 + 0x1A
	.byte	FINE

@**************** Track 02 ****************************@

song310_2:
	.byte	KEYSH , 0
	.byte	W08
	.byte		VOICE , 58
	.byte		PAN   , c_v+0
	.byte		VOL   , 89*song310_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , As1 , v112
	.byte	W02
	.byte		        Bn1 
	.byte	W02
	.byte		        Cn2 
	.byte	W02
	.byte		        Cs2 
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		N04   , Dn2 
	.byte	W04
	.byte		        Dn2 , v036
	.byte	W04
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		N04   , Dn2 , v036
	.byte	W06
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		N04   , Dn2 , v036
	.byte	W06
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		N04   , Dn2 , v036
	.byte	W06
	.byte		N02   , Cn2 , v112
	.byte	W02
	.byte		N04   , Cn2 , v036
	.byte	W06
	.byte		N08   , An1 , v112
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		N02   , Fs1 
	.byte	W02
	.byte		N04   , Fs1 , v036
	.byte	W06
	.byte		N08   , En1 , v112
	.byte	W08
	.byte		N16   , Dn1 
	.byte	W16
	.byte		N04   , En1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		VOICE , 35
	.byte		N04   , Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		N04   , Dn2 , v036
	.byte	W06
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		N04   , Dn2 , v036
	.byte	W06
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , Gn2 , v112
	.byte	W02
	.byte		N04   , Gn2 , v036
	.byte	W06
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		N02   , Gn2 , v112
	.byte	W02
	.byte		N04   , Gn2 , v036
	.byte	W06
	.byte		N02   , Gn1 , v112
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , Fs1 , v112
	.byte	W02
	.byte		N04   , Fs1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		N04   , Dn2 , v036
	.byte	W06
	.byte		N02   , Gn2 , v112
	.byte	W02
	.byte		N04   , Gn2 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , En2 , v112
	.byte	W02
	.byte		N04   , En2 , v036
	.byte	W06
	.byte		N02   , An2 , v112
	.byte	W02
	.byte		N04   , An2 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , Fn2 , v112
	.byte	W02
	.byte		N04   , Fn2 , v036
	.byte	W06
	.byte		N02   , As2 , v112
	.byte	W02
	.byte		N04   , As2 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , Gn2 , v112
	.byte	W02
	.byte		N04   , Gn2 , v036
	.byte	W06
	.byte		N02   , Cn3 , v112
	.byte	W02
	.byte		N04   , Cn3 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W04
	.byte		N02   , Gn2 , v112
	.byte	W02
	.byte		N04   , Gn2 , v036
	.byte	W06
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W04
	.byte		        Gn1 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W12
	.byte		N02   , Gn1 , v112
	.byte	W02
	.byte		N04   , Gn1 , v036
	.byte	W06
	.byte	GOTO
	 .word	song310_2 + 0x56
	.byte	FINE

@**************** Track 03 ****************************@

song310_3:
	.byte	KEYSH , 0
	.byte	W08
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		PAN   , c_v+16
	.byte		VOL   , 88*song310_mvl/mxv
	.byte		N02   , As3 , v112
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		N04   , Dn4 
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		N02   , Dn4 , v112
	.byte	W02
	.byte		N04   , Dn4 , v036
	.byte	W06
	.byte		N02   , Dn4 , v112
	.byte	W02
	.byte		N04   , Dn4 , v036
	.byte	W06
	.byte		N02   , Dn4 , v112
	.byte	W02
	.byte		N04   , Dn4 , v036
	.byte	W06
	.byte		        En4 , v112
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		N08   , Fs4 , v112
	.byte	W08
	.byte		VOL   , 34*song310_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W02
	.byte		VOL   , 36*song310_mvl/mxv
	.byte	W02
	.byte		        39*song310_mvl/mxv
	.byte	W02
	.byte		        45*song310_mvl/mxv
	.byte	W02
	.byte		        48*song310_mvl/mxv
	.byte	W02
	.byte		        53*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        65*song310_mvl/mxv
	.byte	W02
	.byte		VOICE , 56
	.byte		VOL   , 70*song310_mvl/mxv
	.byte	W02
	.byte		        76*song310_mvl/mxv
	.byte	W02
	.byte		        83*song310_mvl/mxv
	.byte	W02
	.byte		        89*song310_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		VOL   , 87*song310_mvl/mxv
	.byte		N08   , Dn5 , v096
	.byte	W08
	.byte		PAN   , c_v+0
	.byte		N02   , Cs5 , v076
	.byte	W02
	.byte		PAN   , c_v-24
	.byte		N02   , Cn5 , v072
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Bn4 , v060
	.byte	W02
	.byte		        An4 , v056
	.byte	W02
	.byte		        Gn4 , v052
	.byte	W02
	.byte		        Fs4 , v048
	.byte	W02
	.byte		        En4 , v040
	.byte	W02
	.byte		        Dn4 , v032
	.byte	W02
	.byte		VOICE , 17
	.byte		PAN   , c_v+16
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Gn4 , v112
	.byte	W04
	.byte		        Gn4 , v036
	.byte	W04
	.byte		        Bn3 , v064
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		N02   , Dn4 , v036
	.byte	W02
	.byte		        Fs4 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , An4 
	.byte	W04
	.byte		        An4 , v036
	.byte	W04
	.byte		        Cs4 , v064
	.byte	W04
	.byte		        Cs4 , v036
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		N02   , En4 , v036
	.byte	W02
	.byte		        Gs4 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , An4 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Bn4 , v036
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		        Gn4 , v036
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N02   , Cn5 , v036
	.byte	W02
	.byte		        Ds5 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , Dn5 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , An4 
	.byte	W04
	.byte		        An4 , v036
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		        Bn4 , v064
	.byte	W04
	.byte		N02   , Bn4 , v036
	.byte	W02
	.byte		        Cs5 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Gn4 , v112
	.byte	W04
	.byte		        Gn4 , v036
	.byte	W04
	.byte		        Bn3 , v064
	.byte	W04
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		N02   , Dn4 , v036
	.byte	W02
	.byte		        Fs4 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , An4 
	.byte	W04
	.byte		        An4 , v036
	.byte	W04
	.byte		        Cs4 , v064
	.byte	W04
	.byte		        Cs4 , v036
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		N02   , En4 , v036
	.byte	W02
	.byte		        Gs4 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , An4 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Bn4 , v036
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		        Gn4 , v036
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		N02   , Cn5 , v036
	.byte	W02
	.byte		        Ds5 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , Dn5 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Bn4 , v036
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		        Gn4 , v036
	.byte	W04
	.byte		        Cn5 , v112
	.byte	W04
	.byte		N02   , Cn5 , v036
	.byte	W02
	.byte		        Ds5 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , Dn5 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte	PATT
	 .word	song310_3 + 0x164
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , As4 , v112
	.byte	W04
	.byte		        As4 , v036
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		        Fn4 , v064
	.byte	W04
	.byte		N02   , Fn4 , v036
	.byte	W02
	.byte		        Bn4 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , As4 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Cn5 
	.byte	W04
	.byte		        Cn5 , v036
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		        En4 , v036
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		N02   , Gn4 , v036
	.byte	W02
	.byte		        Cs5 , v112
	.byte	W02
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N22   , Cn5 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W02
	.byte		N02   , Cn5 , v036
	.byte	W02
	.byte		MOD   , 0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		N44   , Bn4 
	.byte	W04
	.byte		VOL   , 46*song310_mvl/mxv
	.byte	W06
	.byte		        48*song310_mvl/mxv
	.byte	W02
	.byte		        48*song310_mvl/mxv
	.byte	W02
	.byte		        50*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        54*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        61*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        74*song310_mvl/mxv
	.byte	W02
	.byte		        83*song310_mvl/mxv
	.byte	W02
	.byte		        83*song310_mvl/mxv
	.byte	W10
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N02
	.byte	W08
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W08
	.byte		        As4 
	.byte	W02
	.byte		N04   , Bn4 , v036
	.byte	W06
	.byte		N08   , Cn5 , v112
	.byte	W08
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Bn4 , v036
	.byte	W04
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N02   , As4 , v112
	.byte	W02
	.byte		N44   , An4 
	.byte	W04
	.byte		VOL   , 46*song310_mvl/mxv
	.byte	W02
	.byte		        48*song310_mvl/mxv
	.byte	W02
	.byte		        49*song310_mvl/mxv
	.byte	W02
	.byte		        50*song310_mvl/mxv
	.byte	W02
	.byte		        53*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        64*song310_mvl/mxv
	.byte	W02
	.byte		        70*song310_mvl/mxv
	.byte	W02
	.byte		        74*song310_mvl/mxv
	.byte	W02
	.byte		        77*song310_mvl/mxv
	.byte	W02
	.byte		        79*song310_mvl/mxv
	.byte	W02
	.byte		        82*song310_mvl/mxv
	.byte	W08
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		N24   , En4 
	.byte	W02
	.byte		VOL   , 49*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        55*song310_mvl/mxv
	.byte	W02
	.byte		        56*song310_mvl/mxv
	.byte	W02
	.byte		        59*song310_mvl/mxv
	.byte	W02
	.byte		        63*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		        72*song310_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte		VOL   , 79*song310_mvl/mxv
	.byte	W02
	.byte		        85*song310_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 79*song310_mvl/mxv
	.byte		N04   , Bn3 , v064
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte	GOTO
	 .word	song310_3 + 0x85
	.byte	FINE

@**************** Track 04 ****************************@

song310_4:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte	W08
	.byte		VOICE , 75
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song310_mvl/mxv
	.byte	W08
	.byte		PAN   , c_v+0
	.byte		LFOS  , 36
	.byte	W48
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N08   , Dn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		VOL   , 45*song310_mvl/mxv
	.byte		BEND  , c_v-5
	.byte		N04   , Gn4 , v112
	.byte	W08
	.byte		        Bn3 , v064
	.byte	W08
	.byte		        Dn4 
	.byte	W06
	.byte		N02   , Fs4 , v112
	.byte	W02
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , An4 
	.byte	W08
	.byte		        Cs4 , v064
	.byte	W08
	.byte		        En4 
	.byte	W06
	.byte		N02   , Gs4 , v112
	.byte	W02
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , Bn4 
	.byte	W08
	.byte		        Gn4 , v064
	.byte	W08
	.byte		        Cn5 
	.byte	W06
	.byte		N02   , Ds5 , v112
	.byte	W02
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , An4 
	.byte	W08
	.byte		        En4 , v064
	.byte	W08
	.byte		        Bn4 
	.byte	W06
	.byte		N02   , Cs5 , v112
	.byte	W02
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		MOD   , 0
	.byte		N04   , Gn4 , v112
	.byte	W08
	.byte		        Bn3 , v064
	.byte	W08
	.byte		        Dn4 
	.byte	W06
	.byte		N02   , Fs4 , v112
	.byte	W02
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , An4 
	.byte	W08
	.byte		        Cs4 , v064
	.byte	W08
	.byte		        En4 
	.byte	W06
	.byte		N02   , Gs4 , v112
	.byte	W02
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		N04   , Bn4 
	.byte	W16
	.byte		        Cn5 
	.byte	W06
	.byte		N02   , Ds5 
	.byte	W02
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , Bn4 
	.byte	W16
	.byte		        Cn5 
	.byte	W06
	.byte		N02   , Ds5 
	.byte	W02
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte	PATT
	 .word	song310_4 + 0x6F
	.byte		MOD   , 0
	.byte		N04   , As4 , v112
	.byte	W08
	.byte		        Dn4 , v064
	.byte	W08
	.byte		        Fn4 
	.byte	W06
	.byte		N02   , Bn4 , v112
	.byte	W02
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N04   , Cn5 
	.byte	W08
	.byte		        En4 , v064
	.byte	W08
	.byte		        Gn4 
	.byte	W06
	.byte		N02   , Cs5 , v112
	.byte	W02
	.byte		N22   , Cn5 
	.byte	W12
	.byte		LFOS  , 46
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		BEND  , c_v+0
	.byte		N02   , As5 
	.byte	W02
	.byte		N36   , Bn5 
	.byte	W32
	.byte	W02
	.byte		MOD   , 8
	.byte	W04
	.byte		N02   , Gn5 , v060
	.byte	W02
	.byte		        Fs5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Ds5 
	.byte	W02
	.byte		MOD   , 0
	.byte		N24   , Dn5 , v108
	.byte	W24
	.byte		N02   , As5 , v032
	.byte	W02
	.byte		N06   , Bn5 , v112
	.byte	W06
	.byte		N08   , Cn6 
	.byte	W08
	.byte		N04   , Bn5 
	.byte	W08
	.byte		N02   , As5 
	.byte	W02
	.byte		N44   , An5 
	.byte	W32
	.byte	W02
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , En5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N04   , Bn4 , v064
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte	GOTO
	 .word	song310_4 + 0x1F
	.byte	FINE

@**************** Track 05 ****************************@

song310_5:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte	W08
	.byte		VOICE , 83
	.byte		PAN   , c_v-62
	.byte		VOL   , 56*song310_mvl/mxv
	.byte		N02   , As2 , v112
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		        Cn3 
	.byte	W02
	.byte		        Cs3 
	.byte	W02
	.byte		LFOS  , 41
	.byte		N04   , Dn3 
	.byte	W04
	.byte		        Dn3 , v036
	.byte	W04
	.byte		N02   , Dn3 , v112
	.byte	W02
	.byte		N04   , Dn3 , v036
	.byte	W06
	.byte		N02   , Dn3 , v112
	.byte	W02
	.byte		N04   , Dn3 , v036
	.byte	W06
	.byte		N02   , Dn3 , v112
	.byte	W02
	.byte		N04   , Dn3 , v036
	.byte	W06
	.byte		N02   , Cn3 , v112
	.byte	W02
	.byte		N04   , Cn3 , v036
	.byte	W06
	.byte		N08   , An2 , v112
	.byte	W08
	.byte		VOL   , 22*song310_mvl/mxv
	.byte		N24   , Gn2 
	.byte	W02
	.byte		VOL   , 25*song310_mvl/mxv
	.byte	W02
	.byte		        26*song310_mvl/mxv
	.byte	W02
	.byte		        29*song310_mvl/mxv
	.byte	W02
	.byte		        34*song310_mvl/mxv
	.byte	W02
	.byte		        39*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte		MOD   , 8
	.byte	W02
	.byte		VOL   , 51*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        58*song310_mvl/mxv
	.byte	W02
	.byte		        60*song310_mvl/mxv
	.byte	W04
	.byte		        15*song310_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Bn2 
	.byte	W04
	.byte		VOL   , 17*song310_mvl/mxv
	.byte	W02
	.byte		        21*song310_mvl/mxv
	.byte	W02
	.byte		        22*song310_mvl/mxv
	.byte	W02
	.byte		        26*song310_mvl/mxv
	.byte	W02
	.byte		        32*song310_mvl/mxv
	.byte		MOD   , 8
	.byte	W02
	.byte		VOL   , 38*song310_mvl/mxv
	.byte	W02
	.byte		        43*song310_mvl/mxv
	.byte	W02
	.byte		        49*song310_mvl/mxv
	.byte	W02
	.byte		        60*song310_mvl/mxv
	.byte	W02
	.byte		        68*song310_mvl/mxv
	.byte	W02
	.byte		VOICE , 80
	.byte		VOL   , 31*song310_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N02   , Bn3 , v096
	.byte	W04
	.byte		        Bn3 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Bn3 , v096
	.byte	W04
	.byte		        Bn3 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		        An4 , v096
	.byte	W04
	.byte		        An4 , v032
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W04
	.byte		        An4 , v096
	.byte	W04
	.byte		        An4 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cn4 , v096
	.byte	W04
	.byte		        Cn4 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Cn5 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		N02   , Bn3 , v096
	.byte	W04
	.byte		        Bn3 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Bn3 , v096
	.byte	W04
	.byte		        Bn3 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		        An4 , v096
	.byte	W04
	.byte		        An4 , v032
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W04
	.byte		        An4 , v096
	.byte	W04
	.byte		        An4 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte	PEND
	.byte		        Dn5 , v096
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		N04   , Bn3 , v064
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		N02   , En5 , v096
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		N04   , Cn5 , v064
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte	PATT
	 .word	song310_5 + 0x118
	.byte		N02   , As3 , v096
	.byte	W04
	.byte		        As3 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        Fn4 , v032
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        As4 , v032
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        Fn4 , v032
	.byte	W04
	.byte		        Dn4 , v096
	.byte	W04
	.byte		        Dn4 , v032
	.byte	W04
	.byte		        Cn4 , v096
	.byte	W04
	.byte		        Cn4 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Cn5 , v032
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        En4 , v032
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+4
	.byte		N04   , Bn3 , v084
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte	GOTO
	 .word	song310_5 + 0x7F
	.byte	FINE

@**************** Track 06 ****************************@

song310_6:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte	W08
	.byte		VOICE , 82
	.byte		PAN   , c_v+63
	.byte		VOL   , 56*song310_mvl/mxv
	.byte	W02
	.byte		N02   , Ds3 , v112
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		LFOS  , 41
	.byte		N04   , Fs3 
	.byte	W04
	.byte		        Fs3 , v036
	.byte	W04
	.byte		N02   , Fs3 , v112
	.byte	W02
	.byte		N04   , Fs3 , v036
	.byte	W06
	.byte		N02   , Fs3 , v112
	.byte	W02
	.byte		N04   , Fs3 , v036
	.byte	W06
	.byte		N02   , Fs3 , v112
	.byte	W02
	.byte		N04   , Fs3 , v036
	.byte	W06
	.byte		N02   , Gn3 , v112
	.byte	W02
	.byte		N04   , Gn3 , v036
	.byte	W06
	.byte		        An3 , v112
	.byte	W04
	.byte		        An3 , v036
	.byte	W04
	.byte		VOL   , 22*song310_mvl/mxv
	.byte		N24   , Bn3 , v112
	.byte	W02
	.byte		VOL   , 24*song310_mvl/mxv
	.byte	W02
	.byte		        29*song310_mvl/mxv
	.byte	W04
	.byte		        31*song310_mvl/mxv
	.byte	W02
	.byte		        36*song310_mvl/mxv
	.byte	W02
	.byte		        42*song310_mvl/mxv
	.byte		MOD   , 8
	.byte	W02
	.byte		VOL   , 43*song310_mvl/mxv
	.byte	W02
	.byte		        51*song310_mvl/mxv
	.byte	W02
	.byte		        60*song310_mvl/mxv
	.byte	W02
	.byte		        64*song310_mvl/mxv
	.byte	W04
	.byte		        45*song310_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		VOICE , 81
	.byte		VOL   , 31*song310_mvl/mxv
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Gn5 , v096
	.byte	W04
	.byte		        Gn5 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        An5 , v096
	.byte	W04
	.byte		        An5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W04
	.byte		PAN   , c_v-62
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Fs5 , v096
	.byte	W04
	.byte		        Fs5 , v032
	.byte	W04
	.byte		        Bn5 , v096
	.byte	W04
	.byte		        Bn5 , v032
	.byte	W04
	.byte		        Fs5 , v096
	.byte	W04
	.byte		        Fs5 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Cn5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        An5 , v096
	.byte	W04
	.byte		        An5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Cn5 , v032
	.byte	W04
	.byte		PAN   , c_v-63
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Gn5 , v096
	.byte	W04
	.byte		        Gn5 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Bn4 , v032
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        An5 , v096
	.byte	W04
	.byte		        An5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W04
	.byte	PEND
	.byte		PAN   , c_v-63
	.byte		N02   , Fs5 , v096
	.byte	W08
	.byte		        Dn5 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		N04   , Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N02   , An5 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		N04   , An5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte	PATT
	 .word	song310_6 + 0x10C
	.byte		PAN   , c_v-63
	.byte		N02   , Fn4 , v096
	.byte	W04
	.byte		        Fn4 , v032
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        As4 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        Fn5 , v096
	.byte	W04
	.byte		        Fn5 , v032
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        As4 , v032
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N02   , Gn4 , v096
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Cn5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        Gn5 , v096
	.byte	W04
	.byte		        Gn5 , v032
	.byte	W04
	.byte		        En5 , v096
	.byte	W04
	.byte		        En5 , v032
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Cn5 , v032
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		N04   , Gn4 , v084
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte	GOTO
	 .word	song310_6 + 0x6A
	.byte	FINE

@**************** Track 07 ****************************@

song310_7:
	.byte	KEYSH , 0
	.byte	W08
	.byte		VOICE , 0
	.byte		VOL   , 68*song310_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v112
	.byte	W02
	.byte		        En1 , v064
	.byte	W02
	.byte		N02
	.byte	W02
	.byte		N02
	.byte	W02
	.byte		        En1 , v112
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		N06   , Cn1 
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		N04   , En1 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N24   , An2 
	.byte	W24
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , En1 , v112
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , En1 , v112
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte	PEND
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , En1 , v112
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , Dn1 , v112
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte	PATT
	 .word	song310_7 + 0x2C
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , En1 , v112
	.byte	W16
	.byte		N02   , Cn1 
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , Dn1 , v112
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte	PATT
	 .word	song310_7 + 0x2C
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , En1 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , Dn1 , v112
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte	PATT
	 .word	song310_7 + 0x2C
	.byte		N04   , Cn1 , v112
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , En1 , v112
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		N04   , Dn1 , v112
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte	GOTO
	 .word	song310_7 + 0x2C
	.byte	FINE

@**************** Track 08 ****************************@

song310_8:
	.byte	KEYSH , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 41*song310_mvl/mxv
	.byte	W08
	.byte		VOICE , 127
	.byte	W08
	.byte		N04   , Gn4 , v112
	.byte	W08
	.byte		N02   , Gn4 , v080
	.byte	W08
	.byte		        Gn4 , v084
	.byte	W08
	.byte		        Cn5 , v096
	.byte	W08
	.byte		        Cn5 , v080
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		        Dn4 , v112
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		N02
	.byte	W08
	.byte		VOICE , 126
	.byte		PAN   , c_v+63
	.byte		N24   , Cn5 , v120
	.byte	W08
	.byte		PAN   , c_v-64
	.byte	W16
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		N04   , Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn5 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn5 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04   , Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn5 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn5 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	song310_8 + 0x50
	.byte		N04   , Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N02   , Gn5 , v112
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N04   , Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N02   , Gn5 , v112
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte	PATT
	 .word	song310_8 + 0x50
	.byte	PATT
	 .word	song310_8 + 0x50
	.byte	PATT
	 .word	song310_8 + 0x50
	.byte		N04   , Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn5 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Gn5 , v112
	.byte	W08
	.byte		        Gn5 , v064
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N02   , Gn5 , v112
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W04
	.byte	GOTO
	 .word	song310_8 + 0x2F
	.byte	FINE

@******************************************************@
	.align	2

song310:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song310_pri	@ Priority
	.byte	song310_rev	@ Reverb.

	.word	song310_grp

	.word	song310_0
	.word	song310_1
	.word	song310_2
	.word	song310_3
	.word	song310_4
	.word	song310_5
	.word	song310_6
	.word	song310_7
	.word	song310_8

	.end
