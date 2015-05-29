/*
 * BackgroundFunctions.h
 *
 *  Created on: Aug 20, 2014
 *      Author: Gamer2020
 */

#ifndef BACKGROUNDFUNCTIONS_H_
#define BACKGROUNDFUNCTIONS_H_

class BackgroundFunctions
{
private:
	BackgroundFunctions() { }
	~BackgroundFunctions() { }
public:
	static void SetBackgroundsToDefault();
	static void ClearBackground(u32 blockID);
};



#endif /* BACKGROUNDFUNCTIONS_H_ */
