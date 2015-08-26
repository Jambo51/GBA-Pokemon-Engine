.include "BattleTransitionScriptCommandIDs.s"
.global TestBattleTransitionScript

TestBattleTransitionScript:
	.byte WhitePaletteFlash
	.byte WaitPalette
	.byte WhitePaletteFlash
	.byte WaitPalette
	.byte End
