/*
 * LoadGameScreen.h
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_LOADGAMESCREEN_H_
#define INCLUDE_LOADGAMESCREEN_H_

#include "GameScreen.h"

class LoadGameScreen : public GameScreen
{
private:
	u32 exitContext;
	u32 menuPosition;
public:
	LoadGameScreen(u32 enterContext);
	~LoadGameScreen();
	void Update();
	void OnEnterCallback();
	void OnExitCallback();
	void IncrementMenuPosition() { if (menuPosition < 2) { menuPosition++; } }
	void DecrementMenuPosition() { if (menuPosition > 0) { menuPosition--; } }
	bool SetExitContext(u32 contextGetType = 0);
};

#endif /* INCLUDE_LOADGAMESCREEN_H_ */
