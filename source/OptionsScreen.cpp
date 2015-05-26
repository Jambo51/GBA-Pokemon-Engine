/*
 * OptionsScreen.cpp
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#include "OptionsScreen.h"
#include "GameModeManager.h"

OptionsScreen::OptionsScreen()
{
	// TODO Auto-generated constructor stub

}

OptionsScreen::~OptionsScreen()
{
	// TODO Auto-generated destructor stub
}

void OptionsScreen::Update()
{

}

void OptionsScreen::OnEnterCallback()
{
}

void OptionsScreen::OnExitCallback()
{
	switch (exitContext)
	{
		case 2:
			// Options Menu
			GameModeManager::SetScreen(new OptionsScreen());
			break;
		default:
			break;

	}
}
