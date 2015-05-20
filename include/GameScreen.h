/*
 * GameScreen.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef GAMESCREEN_H_
#define GAMESCREEN_H_

class GameScreen
{
public:
	GameScreen();
	virtual ~GameScreen();
	virtual void Update() = 0;
	virtual void OnExitCallback() = 0;
};

#endif /* GAMESCREEN_H_ */
