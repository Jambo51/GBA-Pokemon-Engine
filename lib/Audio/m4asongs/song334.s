@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song334_grp, group_23
	.equ	song334_pri, 0
	.equ	song334_rev, 178
	.equ	song334_mvl, 127
	.equ	song334_key, 0
	.equ	song334_tbs, 1
	.equ	song334_exg, 1
	.equ	song334_cmp, 1

	.text
	.global	song334
	.align	2

@**************** Track 00 ****************************@

song334_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 13
	.byte		PAN   , c_v+0
	.byte		VOL   , 82*song334_mvl/mxv
	.byte	W12
	.byte		VOL   , 82*song334_mvl/mxv
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W24
	.byte		        As4 , v127
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		        As4 , v068
	.byte	W24
	.byte		        As4 , v052
	.byte	W24
	.byte		        En4 , v127
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v052
	.byte	W24
	.byte		        Cs5 , v127
	.byte	W24
	.byte		        Cs5 , v084
	.byte	W24
	.byte		        Cs5 , v068
	.byte	W24
	.byte		        Cs5 , v052
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v127
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , En3 , v048
	.byte	W24
	.byte		        As3 , v127
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , As3 , v080
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , As3 , v064
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , As3 , v048
	.byte	W24
	.byte		N12   , Gn2 , v120
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v052
	.byte	W22
	.byte	W02
	.byte		        As4 , v127
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		        As4 , v064
	.byte	W24
	.byte		        As4 , v048
	.byte	W22
	.byte	W02
	.byte		        En4 , v127
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W22
	.byte	W02
	.byte		        Cs5 , v127
	.byte	W24
	.byte		N22   , Cs5 , v080
	.byte	W23
	.byte		N24   , Cs5 , v064
	.byte	W24
	.byte		N22   , Cs5 , v048
	.byte	W23
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v127
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24
	.byte	W24
	.byte		        As3 , v127
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , As3 , v080
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , As3 , v064
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , As3 , v052
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N12   , Gn2 , v120
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-16
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		PAN   , c_v-33
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N96   , En3 
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N96   , Cn3 , v120
	.byte	W96
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N96   , Dn3 , v120
	.byte	W96
	.byte	PEND
	.byte		PAN   , c_v+32
	.byte		N96   , As2 , v120
	.byte	W96
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song334_mvl/mxv
	.byte		N24   , En4 
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W24
	.byte		N24   , As4 , v120
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		        As4 , v064
	.byte	W24
	.byte		        As4 , v048
	.byte	W24
	.byte	PEND
	.byte		N24   , En4 , v120
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W24
	.byte	PEND
	.byte		N24   , Cs5 , v120
	.byte	W24
	.byte		        Cs5 , v080
	.byte	W24
	.byte		        Cs5 , v064
	.byte	W24
	.byte		        Cs5 , v048
	.byte	W24
	.byte	PEND
	.byte		        En3 , v120
	.byte	W24
	.byte		        En3 , v080
	.byte	W24
	.byte		        En3 , v064
	.byte	W24
	.byte		        En3 , v048
	.byte	W24
	.byte		N24   , As3 , v120
	.byte	W24
	.byte		        As3 , v080
	.byte	W24
	.byte		        As3 , v064
	.byte	W24
	.byte		        As3 , v048
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N12   , Gn2 , v120
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song334_mvl/mxv
	.byte		N24   , En4 
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W24
	.byte	PATT
	 .word	song334_0 + 0x155
	.byte	PATT
	 .word	song334_0 + 0x163
	.byte	PATT
	 .word	song334_0 + 0x171
	.byte		VOL   , 84*song334_mvl/mxv
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		        En3 , v080
	.byte	W24
	.byte		        En3 , v064
	.byte	W24
	.byte		        En3 , v048
	.byte	W24
	.byte	PATT
	 .word	song334_0 + 0x18B
	.byte	PATT
	 .word	song334_0 + 0xF7
	.byte		PAN   , c_v-16
	.byte		N12   , Bn2 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 68*song334_mvl/mxv
	.byte		N96   , En3 
	.byte	W96
	.byte	PATT
	 .word	song334_0 + 0x128
	.byte	PATT
	 .word	song334_0 + 0x12F
	.byte	PATT
	 .word	song334_0 + 0x136
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-32
	.byte		VOL   , 68*song334_mvl/mxv
	.byte		N96   , En4 , v120
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N96   , Dn4 , v120
	.byte	W96
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PATT
	 .word	song334_0 + 0x234
	.byte	GOTO
	 .word	song334_0 + 0xB
	.byte	FINE

@**************** Track 01 ****************************@

song334_1:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-16
	.byte		VOL   , 72*song334_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 72*song334_mvl/mxv
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v048
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , En3 , v032
	.byte	W24
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cn3 , v064
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , Cn3 , v048
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cn3 , v032
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v048
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , En3 , v032
	.byte	W24
	.byte	PATT
	 .word	song334_1 + 0x27
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song334_mvl/mxv
	.byte		N24   , Bn3 , v120
	.byte	W24
	.byte		        Bn3 , v064
	.byte	W24
	.byte		        Bn3 , v048
	.byte	W24
	.byte		        Bn3 , v032
	.byte	W24
	.byte		        Fs4 , v120
	.byte	W24
	.byte		        Fs4 , v080
	.byte	W24
	.byte		        Fs4 , v064
	.byte	W24
	.byte		        Fs4 , v048
	.byte	W24
	.byte		        Dn4 , v120
	.byte	W24
	.byte		        Dn4 , v080
	.byte	W24
	.byte		        Dn4 , v064
	.byte	W24
	.byte		        Dn4 , v048
	.byte	W24
	.byte		        Gn4 , v120
	.byte	W24
	.byte		        Gn4 , v080
	.byte	W24
	.byte		        Gn4 , v064
	.byte	W24
	.byte		        Fs4 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		VOL   , 72*song334_mvl/mxv
	.byte		N24   , En3 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v052
	.byte	W24
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cn3 , v080
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Cn3 , v064
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cn3 , v048
	.byte	W24
	.byte	PEND
	.byte		        En3 , v120
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v048
	.byte	W24
	.byte	PATT
	 .word	song334_1 + 0xA9
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song334_mvl/mxv
	.byte	W02
	.byte		N24   , Bn3 , v120
	.byte	W24
	.byte		        Bn3 , v080
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N24
	.byte	W22
	.byte	W02
	.byte		        Fs4 , v120
	.byte	W24
	.byte		        Fs4 , v080
	.byte	W24
	.byte		        Fs4 , v064
	.byte	W24
	.byte		        Fs4 , v052
	.byte	W22
	.byte	W02
	.byte		        Dn4 , v120
	.byte	W24
	.byte		        Dn4 , v080
	.byte	W24
	.byte		        Dn4 , v064
	.byte	W24
	.byte		        Dn4 , v044
	.byte	W22
	.byte	W02
	.byte		        Gn4 , v120
	.byte	W24
	.byte		        Gn4 , v080
	.byte	W24
	.byte		        Gn4 , v056
	.byte	W23
	.byte		N21   , Fs4 , v120
	.byte	W23
	.byte		PAN   , c_v-32
	.byte		VOL   , 72*song334_mvl/mxv
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En5 , v060
	.byte	W24
	.byte		        Ds5 , v056
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v120
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Gn5 , v056
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        En5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+0
	.byte		VOL   , 65*song334_mvl/mxv
	.byte		N96   , En4 , v120
	.byte	W96
	.byte		        Dn4 
	.byte	W96
	.byte		        Cn4 
	.byte	W96
	.byte		        Dn4 
	.byte	W96
	.byte		VOL   , 72*song334_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N24   , En3 
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , En3 , v048
	.byte	W24
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Cn3 , v080
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Cn3 , v064
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Cn3 , v048
	.byte	W24
	.byte	PEND
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , En3 , v048
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song334_1 + 0x183
	.byte		PAN   , c_v-1
	.byte		VOL   , 64*song334_mvl/mxv
	.byte		N24   , Bn3 , v120
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Bn3 , v080
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Bn3 , v064
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Bn3 , v048
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , Fs4 , v120
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Fs4 , v080
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Fs4 , v064
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Fs4 , v048
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v-1
	.byte		N24   , Dn4 , v120
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Dn4 , v060
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Dn4 , v040
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Dn4 , v020
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Gn4 , v052
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Gn4 , v028
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Fs4 , v016
	.byte	W24
	.byte		VOL   , 76*song334_mvl/mxv
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , En3 , v048
	.byte	W24
	.byte	PATT
	 .word	song334_1 + 0x183
	.byte	PATT
	 .word	song334_1 + 0x19A
	.byte	PATT
	 .word	song334_1 + 0x183
	.byte		VOL   , 68*song334_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Bn3 , v120
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Bn3 , v080
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Bn3 , v064
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Bn3 , v048
	.byte	W24
	.byte	PATT
	 .word	song334_1 + 0x1D0
	.byte		PAN   , c_v+0
	.byte		N24   , Dn4 , v120
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Dn4 , v052
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Dn4 , v032
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Dn4 , v016
	.byte	W24
	.byte		PAN   , c_v-1
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Gn4 , v056
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Gn4 , v032
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N24   , Fs4 , v016
	.byte	W24
	.byte		VOICE , 78
	.byte		VOL   , 75*song334_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		N06   , En2 , v112
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOICE , 13
	.byte		N03   , En4 , v108
	.byte	W24
	.byte		        Ds4 , v096
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		VOICE , 78
	.byte		N06   , As2 , v112
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		VOICE , 13
	.byte		N03   , Gn4 , v096
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		VOICE , 24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song334_1 + 0xD
	.byte	FINE

@**************** Track 02 ****************************@

song334_2:
	.byte	KEYSH , 0
	.byte		VOICE , 13
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song334_mvl/mxv
	.byte	W12
	.byte		VOL   , 90*song334_mvl/mxv
	.byte		N12   , En2 , v120
	.byte	W36
	.byte		N06   , En1 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2 , v120
	.byte	W24
	.byte		N12   , En2 , v120
	.byte	W36
	.byte		N06   , En1 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2 , v120
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song334_2 + 0x1D
	.byte	PATT
	 .word	song334_2 + 0x1D
	.byte	PATT
	 .word	song334_2 + 0x1D
	.byte	PATT
	 .word	song334_2 + 0x1D
	.byte		N12   , En2 , v120
	.byte	W36
	.byte		N06   , En1 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2 , v120
	.byte	W21
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		        c_v+0
	.byte		N12   , En2 
	.byte	W36
	.byte		N06   , En1 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2 , v120
	.byte	W24
	.byte		N12   , En2 , v120
	.byte	W36
	.byte		N06   , En1 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , En2 , v120
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte		N12   , En2 , v120
	.byte	W36
	.byte		N06   , En1 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2 , v120
	.byte	W06
	.byte		BEND  , c_v+6
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song334_2 + 0x5F
	.byte	PATT
	 .word	song334_2 + 0x75
	.byte	PATT
	 .word	song334_2 + 0x5F
	.byte	PATT
	 .word	song334_2 + 0x75
	.byte	PATT
	 .word	song334_2 + 0x5F
	.byte	PATT
	 .word	song334_2 + 0x75
	.byte		VOICE , 1
	.byte		N24   , En2 , v120
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		N24   , Cn2 , v120
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	PEND
	.byte		N24   , Dn2 , v120
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	PEND
	.byte		N24   , As1 , v120
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	PEND
	.byte		VOICE , 13
	.byte		PAN   , c_v+32
	.byte		VOL   , 62*song334_mvl/mxv
	.byte		N12   , En3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En3 , v028
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v024
	.byte	W12
	.byte		        Dn4 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 , v024
	.byte	W12
	.byte		        Cs4 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cs4 , v024
	.byte	W12
	.byte		        Gs3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Gs3 , v024
	.byte	W12
	.byte		        Gn3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn3 , v028
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v024
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v024
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Ds3 , v028
	.byte	W12
	.byte		        An3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v024
	.byte	W12
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v024
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v028
	.byte	W12
	.byte		        Fs3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Fs3 , v024
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Ds3 , v028
	.byte	W12
	.byte	PEND
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En3 , v024
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        Dn4 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 , v028
	.byte	W12
	.byte		N12   , Cs4 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cs4 , v024
	.byte	W12
	.byte		        Gs3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Gs3 , v024
	.byte	W12
	.byte		        Gn3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn3 , v024
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte	PEND
	.byte		N12   , As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v024
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v024
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Ds3 , v024
	.byte	W12
	.byte		        An3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v024
	.byte	W12
	.byte	PEND
	.byte		        Gs3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v028
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v028
	.byte	W12
	.byte		        Fs3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Fs3 , v024
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Ds3 , v028
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En3 , v028
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v028
	.byte	W12
	.byte		        As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v024
	.byte	W12
	.byte		        Dn4 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 , v024
	.byte	W12
	.byte	PATT
	 .word	song334_2 + 0x185
	.byte		N12   , As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v024
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Ds3 , v024
	.byte	W12
	.byte		        An3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v024
	.byte	W12
	.byte	PATT
	 .word	song334_2 + 0x13B
	.byte		N12   , En3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En3 , v028
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v024
	.byte	W12
	.byte		        As3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        Dn4 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 , v024
	.byte	W12
	.byte	PATT
	 .word	song334_2 + 0x185
	.byte	PATT
	 .word	song334_2 + 0x1AB
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v024
	.byte	W12
	.byte		        En3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v024
	.byte	W12
	.byte		        Fs3 , v076
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Fs3 , v028
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Ds3 , v028
	.byte	W12
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*song334_mvl/mxv
	.byte		N84   , En5 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W60
	.byte	W03
	.byte		N03   , Ds5 , v064
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N92   , Cn5 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W68
	.byte	W01
	.byte		N03   , Cs5 , v064
	.byte	W03
	.byte		MOD   , 0
	.byte		N84   , Dn5 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W60
	.byte	W03
	.byte		N03   , Cs5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		MOD   , 0
	.byte		N80   , As4 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W56
	.byte	W01
	.byte		N03   , Bn4 , v064
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N96   , En5 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W72
	.byte		        0
	.byte		N92   , Fn5 
	.byte	W24
	.byte		MOD   , 6
	.byte	W68
	.byte	W01
	.byte		N03   , Fs5 , v064
	.byte	W03
	.byte		MOD   , 0
	.byte		N84   , Gn5 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W60
	.byte	W03
	.byte		N03   , Gs5 , v064
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N96   , Bn5 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte	W72
	.byte		VOICE , 1
	.byte		VOL   , 90*song334_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , En2 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	PATT
	 .word	song334_2 + 0xB3
	.byte	PATT
	 .word	song334_2 + 0xBA
	.byte	PATT
	 .word	song334_2 + 0xC1
	.byte		VOICE , 13
	.byte		N09   , En3 , v120
	.byte	W36
	.byte		N12   , En2 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N09   , En3 , v120
	.byte	W36
	.byte		N12   , En2 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song334_2 + 0x340
	.byte	PATT
	 .word	song334_2 + 0x340
	.byte	PATT
	 .word	song334_2 + 0x340
	.byte	PATT
	 .word	song334_2 + 0x340
	.byte	PATT
	 .word	song334_2 + 0x340
	.byte	PATT
	 .word	song334_2 + 0x340
	.byte	GOTO
	 .word	song334_2 + 0xD
	.byte	FINE

@**************** Track 03 ****************************@

song334_3:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 79*song334_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N84   , En1 , v064
	.byte	W84
	.byte	W03
	.byte		N03   , Ds1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		        Cs1 
	.byte	W03
	.byte		N92   , Cn1 
	.byte	W92
	.byte	W01
	.byte		N03   , Cs1 
	.byte	W03
	.byte		N84   , Dn1 
	.byte	W84
	.byte	W03
	.byte		N03   , Cs1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte		N80   , As0 
	.byte	W80
	.byte	W01
	.byte		N03   , Bn0 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        Cs1 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		        Ds1 
	.byte	W03
	.byte		N96   , En1 
	.byte	W96
	.byte		N92   , Fn1 
	.byte	W92
	.byte	W01
	.byte		N03   , Fs1 
	.byte	W03
	.byte		N84   , Gn1 
	.byte	W84
	.byte	W03
	.byte		N03   , Gs1 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte		N96   , Bn1 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song334_3 + 0xD
	.byte	FINE

@**************** Track 04 ****************************@

song334_4:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song334_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W12
	.byte		VOL   , 34*song334_mvl/mxv
	.byte		N06   , En4 , v120
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W24
	.byte		        As4 , v120
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		        As4 , v068
	.byte	W24
	.byte		        As4 , v052
	.byte	W24
	.byte		        En4 , v120
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v052
	.byte	W24
	.byte		        Cs5 , v120
	.byte	W24
	.byte		        Cs5 , v084
	.byte	W24
	.byte		        Cs5 , v068
	.byte	W24
	.byte		        Cs5 , v052
	.byte	W24
	.byte		        Bn3 , v120
	.byte	W24
	.byte		        Bn3 , v080
	.byte	W24
	.byte		        Bn3 , v064
	.byte	W24
	.byte		        Bn3 , v048
	.byte	W24
	.byte		        Fs4 , v120
	.byte	W24
	.byte		        Fs4 , v080
	.byte	W24
	.byte		        Fs4 , v064
	.byte	W24
	.byte		        Fs4 , v048
	.byte	W24
	.byte		        Dn4 , v120
	.byte	W24
	.byte		        Dn4 , v080
	.byte	W24
	.byte		        Dn4 , v064
	.byte	W24
	.byte		        Dn4 , v048
	.byte	W24
	.byte		        Gn4 , v120
	.byte	W24
	.byte		        Gn4 , v080
	.byte	W24
	.byte		        Gn4 , v064
	.byte	W24
	.byte		        Fs4 , v120
	.byte	W24
	.byte	W04
	.byte		        En4 
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v048
	.byte	W20
	.byte	W04
	.byte		        As4 , v120
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		        As4 , v068
	.byte	W24
	.byte		        As4 , v052
	.byte	W20
	.byte	W04
	.byte		        En4 , v120
	.byte	W24
	.byte		        En4 , v080
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v052
	.byte	W20
	.byte	W04
	.byte		        Cs5 , v120
	.byte	W24
	.byte		        Cs5 , v084
	.byte	W23
	.byte		        Cs5 , v068
	.byte	W24
	.byte		        Cs5 , v052
	.byte	W21
	.byte	W04
	.byte		        Bn3 , v120
	.byte	W24
	.byte		        Bn3 , v080
	.byte	W24
	.byte		        Bn3 , v064
	.byte	W24
	.byte		        Bn3 , v048
	.byte	W20
	.byte	W04
	.byte		        Fs4 , v120
	.byte	W24
	.byte		        Fs4 , v080
	.byte	W24
	.byte		        Fs4 , v064
	.byte	W24
	.byte		        Fs4 , v048
	.byte	W20
	.byte	W04
	.byte		        Dn4 , v120
	.byte	W24
	.byte		        Dn4 , v080
	.byte	W24
	.byte		        Dn4 , v064
	.byte	W24
	.byte		        Dn4 , v048
	.byte	W20
	.byte	W04
	.byte		        Gn4 , v120
	.byte	W24
	.byte		        Gn4 , v080
	.byte	W24
	.byte		        Gn4 , v064
	.byte	W23
	.byte		        Fs4 , v120
	.byte	W21
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , En3 , v032
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , Bn3 
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , As3 
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , Dn4 
	.byte	W11
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , Cs4 , v032
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , Gs3 
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , Gn3 
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , Bn3 
	.byte	W11
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , As3 , v032
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , En3 
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , Ds3 
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , An3 
	.byte	W11
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , Gs3 , v032
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , En3 
	.byte	W11
	.byte		PAN   , c_v-64
	.byte	W13
	.byte		N10   , Fs3 
	.byte	W11
	.byte		PAN   , c_v+63
	.byte	W13
	.byte		N10   , Ds3 
	.byte	W11
	.byte	PEND
	.byte	PATT
	 .word	song334_4 + 0xDD
	.byte	PATT
	 .word	song334_4 + 0xF7
	.byte	PATT
	 .word	song334_4 + 0x111
	.byte	PATT
	 .word	song334_4 + 0x12B
	.byte	PATT
	 .word	song334_4 + 0xDD
	.byte	PATT
	 .word	song334_4 + 0xF7
	.byte	PATT
	 .word	song334_4 + 0x111
	.byte	PATT
	 .word	song334_4 + 0x12B
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , En3 , v032
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , Bn3 
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , As3 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , Dn4 
	.byte	W11
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , Cs4 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , Gs3 
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , Gn3 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , Bn3 
	.byte	W11
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , As3 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , En3 
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , An3 
	.byte	W11
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , Gs3 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , En3 
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N22   , Fs3 
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W11
	.byte	W24
	.byte		PAN   , c_v+0
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song334_4 + 0xF
	.byte	FINE

@**************** Track 05 ****************************@

song334_5:
	.byte	KEYSH , 0
	.byte		VOL   , 56*song334_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 24
	.byte		PAN   , c_v+16
	.byte	W24
	.byte		N12   , En3 , v056
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , En5 , v036
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        En4 , v032
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , As3 , v056
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Gn5 , v032
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        En5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 , v028
	.byte	W12
	.byte		        Cs5 
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song334_5 + 0x7
	.byte	FINE

@**************** Track 06 ****************************@

song334_6:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song334_mvl/mxv
	.byte	W12
	.byte		N12   , En1 , v120
	.byte	W72
	.byte		N15   , As1 
	.byte	W06
	.byte		MOD   , 7
	.byte	W09
	.byte		N03   , Gs1 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , En1 , v120
	.byte	W72
	.byte		N15   , As1 
	.byte	W06
	.byte		MOD   , 7
	.byte	W09
	.byte		N03   , Gs1 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song334_6 + 0x1E
	.byte	PATT
	 .word	song334_6 + 0x1E
	.byte	PATT
	 .word	song334_6 + 0x1E
	.byte	PATT
	 .word	song334_6 + 0x1E
	.byte	PATT
	 .word	song334_6 + 0x1E
	.byte	PATT
	 .word	song334_6 + 0x1E
	.byte		MOD   , 0
	.byte		BEND  , c_v-2
	.byte		N12   , En1 , v120
	.byte	W72
	.byte		N15   , As1 
	.byte	W15
	.byte		N03   , Gs1 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		N12   , En1 , v120
	.byte	W72
	.byte		N15   , As1 
	.byte	W15
	.byte		N03   , Gs1 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song334_6 + 0x62
	.byte		N12   , En1 , v120
	.byte	W72
	.byte		N03   , As1 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N03   , Fn2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		N54   , Bn2 
	.byte	W12
	.byte		MOD   , 8
	.byte	W42
	.byte		        0
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N54   , Ds3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W42
	.byte		        0
	.byte		N03   , En3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N44   , An3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W32
	.byte	W01
	.byte		        0
	.byte		N03   , Gs3 
	.byte	W03
	.byte		N42   , Gn3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W30
	.byte		        0
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		N18   , Ds3 
	.byte	W18
	.byte		N03   , En3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N03   , Ds3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N24   , Bn2 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song334_6 + 0xD
	.byte	FINE

@**************** Track 07 ****************************@

song334_7:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song334_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N12   , En2 , v127
	.byte	W36
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N21   , Fs2 , v127
	.byte	W06
	.byte		MOD   , 7
	.byte	W15
	.byte		N03   , Fn2 , v120
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , En2 , v127
	.byte	W36
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N21   , Fs2 , v127
	.byte	W06
	.byte		MOD   , 7
	.byte	W15
	.byte		N03   , Fn2 , v120
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song334_7 + 0x29
	.byte	PATT
	 .word	song334_7 + 0x29
	.byte	PATT
	 .word	song334_7 + 0x29
	.byte	PATT
	 .word	song334_7 + 0x29
	.byte	PATT
	 .word	song334_7 + 0x29
	.byte		MOD   , 0
	.byte		N12   , En2 , v127
	.byte	W36
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N21   , Fs2 
	.byte	W06
	.byte		MOD   , 7
	.byte	W15
	.byte		N03   , Fn2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , En2 
	.byte	W36
	.byte		N06   , En1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , En2 , v127
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N12   , En2 , v127
	.byte	W36
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs2 , v127
	.byte	W18
	.byte		BEND  , c_v-6
	.byte	W06
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte		N12   , En2 , v127
	.byte	W36
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , En2 , v127
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-6
	.byte	W06
	.byte	PEND
	.byte		        c_v+0
	.byte		N12
	.byte	W36
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12   , Fs2 , v127
	.byte	W18
	.byte		BEND  , c_v-6
	.byte	W06
	.byte	PATT
	 .word	song334_7 + 0x98
	.byte	PATT
	 .word	song334_7 + 0x84
	.byte	PATT
	 .word	song334_7 + 0x98
	.byte	PATT
	 .word	song334_7 + 0x84
	.byte		BEND  , c_v+0
	.byte		N24   , En2 , v127
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		        Cn2 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		        Dn2 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		        As1 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		VOICE , 83
	.byte		N12   , En3 , v064
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Cs4 , v064
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte	PEND
	.byte		N12   , As3 , v064
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
	.byte		N12   , Gs3 , v064
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
	.byte		N12   , En3 , v064
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song334_7 + 0xF4
	.byte	PATT
	 .word	song334_7 + 0xFF
	.byte	PATT
	 .word	song334_7 + 0x10A
	.byte	PATT
	 .word	song334_7 + 0x115
	.byte	PATT
	 .word	song334_7 + 0xF4
	.byte	PATT
	 .word	song334_7 + 0xFF
	.byte	PATT
	 .word	song334_7 + 0x10A
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		VOICE , 80
	.byte		N84   , En2 , v120
	.byte	W84
	.byte	W03
	.byte		N03   , Ds2 , v064
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		N92   , Cn2 , v120
	.byte	W92
	.byte	W01
	.byte		N03   , Cs2 , v064
	.byte	W03
	.byte		N84   , Dn2 , v120
	.byte	W84
	.byte	W03
	.byte		N03   , Cs2 , v064
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N80   , As1 , v120
	.byte	W80
	.byte	W01
	.byte		N03   , Bn1 , v064
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		N96   , En2 , v120
	.byte	W96
	.byte		N92   , Fn2 
	.byte	W92
	.byte	W01
	.byte		N03   , Fs2 , v064
	.byte	W03
	.byte		N84   , Gn2 , v120
	.byte	W84
	.byte	W03
	.byte		N03   , Gs2 , v064
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		N96   , Bn2 , v120
	.byte	W96
	.byte		N24   , En2 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		        Cn2 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		        Dn2 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		        As1 
	.byte	W72
	.byte		N24
	.byte	W24
	.byte		N09   , En3 , v064
	.byte	W36
	.byte		N12   , En2 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	PATT
	 .word	song334_7 + 0x1C9
	.byte	GOTO
	 .word	song334_7 + 0x14
	.byte	FINE

@**************** Track 08 ****************************@

song334_8:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 77*song334_mvl/mxv
	.byte		N03   , En3 , v100
	.byte	W03
	.byte		        En3 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En3 , v120
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W24
	.byte	PEND
	.byte		N06   , En3 , v120
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W03
	.byte		        Dn3 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte		N06   , En3 , v120
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		N03   , En3 , v100
	.byte	W03
	.byte		        En3 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte	PATT
	 .word	song334_8 + 0x24
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte	PATT
	 .word	song334_8 + 0x47
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte	PATT
	 .word	song334_8 + 0x24
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte	PATT
	 .word	song334_8 + 0x47
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte	PATT
	 .word	song334_8 + 0x24
	.byte	PATT
	 .word	song334_8 + 0x11
	.byte	PATT
	 .word	song334_8 + 0x47
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N03   , En3 , v100
	.byte	W03
	.byte		        En3 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	GOTO
	 .word	song334_8 + 0x11
	.byte	FINE

@**************** Track 09 ****************************@

song334_9:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 45*song334_mvl/mxv
	.byte	W12
	.byte		VOICE , 127
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v096
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		        Gn5 , v036
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v028
	.byte	W12
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v096
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		        Gn5 , v036
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v028
	.byte	W12
	.byte	PEND
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v096
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		        Gn5 , v036
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v028
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v096
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		        Gn5 , v036
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v028
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte	PATT
	 .word	song334_9 + 0x59
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte	PATT
	 .word	song334_9 + 0x81
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte	PATT
	 .word	song334_9 + 0x59
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte	PATT
	 .word	song334_9 + 0x81
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte	PATT
	 .word	song334_9 + 0x59
	.byte	PATT
	 .word	song334_9 + 0x36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 45*song334_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 126
	.byte		PAN   , c_v-63
	.byte	W42
	.byte		N01   , Fn5 , v024
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v076
	.byte	W03
	.byte		        Fn5 , v080
	.byte	W03
	.byte		        Fn5 , v100
	.byte	W03
	.byte		        Fn5 , v104
	.byte	W03
	.byte		        Fn5 , v080
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N01   , Fn5 , v056
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N01   , Fn5 , v032
	.byte	W03
	.byte		        Fn5 , v036
	.byte	W03
	.byte		        Fn5 , v024
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v016
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v008
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v004
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v008
	.byte	W03
	.byte		        Fn5 , v004
	.byte	W03
	.byte		        Fn5 , v008
	.byte	W60
	.byte	W96
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N01   , Fn5 , v024
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v076
	.byte	W03
	.byte		        Fn5 , v080
	.byte	W03
	.byte		        Fn5 , v100
	.byte	W03
	.byte		        Fn5 , v104
	.byte	W03
	.byte		        Fn5 , v080
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N01   , Fn5 , v056
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v-63
	.byte		N01   , Fn5 , v032
	.byte	W03
	.byte		        Fn5 , v036
	.byte	W03
	.byte		        Fn5 , v024
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v016
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v008
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v004
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v008
	.byte	W03
	.byte		        Fn5 , v004
	.byte	W03
	.byte		        Fn5 , v008
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+63
	.byte	W96
	.byte	W36
	.byte		N01   , Fn5 , v024
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v076
	.byte	W03
	.byte		        Fn5 , v080
	.byte	W03
	.byte		        Fn5 , v100
	.byte	W03
	.byte		        Fn5 , v104
	.byte	W03
	.byte		PAN   , c_v-1
	.byte		N01   , Fn5 , v080
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N01   , Fn5 , v056
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Fn5 , v032
	.byte	W03
	.byte		        Fn5 , v036
	.byte	W03
	.byte		        Fn5 , v024
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		VOICE , 127
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W84
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W72
	.byte		        c_v+63
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		        Gn5 , v036
	.byte	W36
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v096
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn5 , v080
	.byte	W12
	.byte		        Gn5 , v036
	.byte	W12
	.byte		VOICE , 126
	.byte		PAN   , c_v+63
	.byte		N24   , Gn5 , v080
	.byte	W24
	.byte	GOTO
	 .word	song334_9 + 0x10
	.byte	FINE

@******************************************************@
	.align	2

song334:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song334_pri	@ Priority
	.byte	song334_rev	@ Reverb.

	.word	song334_grp

	.word	song334_0
	.word	song334_1
	.word	song334_2
	.word	song334_3
	.word	song334_4
	.word	song334_5
	.word	song334_6
	.word	song334_7
	.word	song334_8
	.word	song334_9

	.end
