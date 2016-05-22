/*
 * M4APlayer.cpp
 *
 *  Created on: 10 Jan 2016
 *      Author: CoolerMaster
 */

#include "M4APlayer.h"

const int M4APlayer::maxTracks = 16;

M4APlayer::M4APlayer()
{
	// TODO Auto-generated constructor stub

}

M4APlayer::~M4APlayer()
{
	// TODO Auto-generated destructor stub
}

bool M4APlayer::AddTrack(M4ATrack* track)
{
	if (tracks.Size() < maxTracks)
	{
		tracks.PushBack((void*)track);
	}
	else
	{
		return false;
	}
	return true;
}

bool M4APlayer::RemoveTrack(M4ATrack* track)
{
	return tracks.Remove((void*)track);
}

bool M4APlayer::Update()
{
	ListNode* node = tracks.Front();
	if (node)
	{
		do
		{
			M4ATrack* track = (M4ATrack*)node->GetItem();
			if (!track->Update())
			{
				node = node->GetPrevious();
				if (RemoveTrack(track))
				{
					delete track;
				}
			}
			node = node->GetNext();
		} while (node);
	}
	return true;
}

void M4APlayer::Kill()
{
	ListNode* node = tracks.Front();
	if (node)
	{
		do
		{
			M4ATrack* track = (M4ATrack*)node->GetItem();
			delete track;
			node = node->GetNext();
		} while (node);
	}
	tracks.Clear();
}
