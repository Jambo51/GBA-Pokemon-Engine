/*
 * GameModeManager.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef SOURCE_GAMEMODEMANAGER_H_
#define SOURCE_GAMEMODEMANAGER_H_

class GameScreen;

class GameModeManager
{
private:
	static GameScreen* screen;
	GameModeManager();
	~GameModeManager();
public:
	static void SetScreen(GameScreen* newScreen);
	static void Update();
};

#endif /* SOURCE_GAMEMODEMANAGER_H_ */
