/*
 * OptionsScreen.h
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#ifndef SOURCE_OPTIONSSCREEN_H_
#define SOURCE_OPTIONSSCREEN_H_

#include "GameScreen.h"

class OptionsScreen : public GameScreen
{
private:
	u32 exitContext;
	u32 menuPosition;
public:
	OptionsScreen();
	~OptionsScreen();
	void Update();
	void OnExitCallback();
	void OnEnterCallback();
	void IncrementMenuPosition() { menuPosition++; }
	void DecrementMenuPosition() { menuPosition--; }
};

#endif /* SOURCE_OPTIONSSCREEN_H_ */
