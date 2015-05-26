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
	LoadGameScreen();
	~LoadGameScreen();
	void Update();
	void OnEnterCallback();
	void OnExitCallback();
	void IncrementMenuPosition() { menuPosition++; }
	void DecrementMenuPosition() { menuPosition--; }
};

#endif /* INCLUDE_LOADGAMESCREEN_H_ */
