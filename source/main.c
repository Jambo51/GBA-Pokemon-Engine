#include "Functions.h"
#include "Data/GlobalDefinitions.h"
#include "Data/MemoryLocations.h"
#include "Data/Fonts.h"
#include "Functions/ObjectFunctions.h"
#include "Functions/titlescreen.h"

#define LATIN 0
#define CYRILLIC 1
#define JAPANESE 2
#define ARABIC 3
#define BRAILLE 4

#define M4A 0
#define GBP 1

#define TEXTSET LATIN
#define MUSICENGINE GBP

void StartTimer(int timerNum, int timerSetting, u16 cascadeValue)
{
	switch(timerNum)
	{
	case 0:
		REG_TM0D = cascadeValue;
		REG_TM0CNT = 0x80 | timerSetting;
		break;
	case 1:
		REG_TM1D = cascadeValue;
		REG_TM1CNT = 0x80 | timerSetting;
		break;
	case 2:
		REG_TM2D = cascadeValue;
		REG_TM2CNT = 0x80 | timerSetting;
		break;
	case 3:
		REG_TM3D = cascadeValue;
		REG_TM3CNT = 0x80 | timerSetting;
		break;
	}
}

void StoreTextIntoBuffer(char* bufferLocation, char* textStringLocation, u32 length)
{
	if (length > 0x20)
	{
		length = 0x20;
	}
	u32 i;
	for (i = 0; i < length; i++)
	{
		bufferLocation[i] = textStringLocation[i];
		if (textStringLocation[i] == 0xFF)
		{
			break;
		}
	}
}

extern void SetPlayerName(char*);

void SetPlayerName(char* nameString)
{
	StoreTextIntoBuffer(player.name, nameString, PlayerNameLength);
}

void FadeToBlackPreGameStart()
{
	FadeScreen();
	if (fadeStruct[0].isActive == 0)
	{
		CallbackMain = &LoadOverworld;
	}
}

int main()
{
	StartTimer(2, 0, 0);
	StartTimer(3, 1, 0);
	InitialiseTextEngine(TEXTSET);
	rtc_enable();
	irq_init(NULL);
	irq_add(II_VBLANK, NULL);
	setbackgroundstodefault();
	InitialiseXY();
	ReseedRNG();
	M4_Init();
	InitialiseMemoryAllocator((void*)0x02020000, 0x20000);
	InitialiseSpriteAllocator((void*)0x06010000, 0x8000);
	InitialisePaletteAllocator();
	HandleKeyPresses = &IgnoreKeyPresses;
	CallbackMain = &InitialiseBattleEnvironment;
	RTCPaletteUpdate = &IgnoreKeyPresses;
	SetMusicEngine(MUSICENGINE);
	u16* pRAM = (u16*)TilePaletteRAM(0);
	pRAM[0] = 0x7FFF;
	SetupFadeScreenSlot(2, 0, (u16*)&blackPalette);
	pauseMenuLocation = 0;
	SetFlag(Flag_Pokedex);
	SetFlag(Flag_Pokegear);
	SetFlag(Flag_PokemonMenu);
	player.completeTrainerID = GetRandom32BitValue();
	SetPlayerName("Jambo51");
	GivePokemonToPlayer(&partyPokemon[0], 36, Charizard, 0);
	while (1)
	{
		VBlankIntrWait();
		M4_Intr();
		RTCMainLoopUpdate();
		KeyPoll();
		HandleKeyPresses();
		CallbackMain();
		UpdateOAMFromStructure();
		MusicEngine();
		DefragmentMallocData();
		GetRandom32BitValue();
	}
	return 0;
}
