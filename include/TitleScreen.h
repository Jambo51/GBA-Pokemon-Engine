/*
 * TitleScreen.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef TITLESCREEN_H_
#define TITLESCREEN_H_

#include "GameScreen.h"
#include "GlobalDefinitions.h"

class TitleScreen : public GameScreen
{
private:
	u32 counter:31;
	u32 status:1;
public:
	TitleScreen();
	~TitleScreen();
	void Update();
	void OnExitCallback();
	void OnEnterCallback();
};

#endif /* TITLESCREEN_H_ */
