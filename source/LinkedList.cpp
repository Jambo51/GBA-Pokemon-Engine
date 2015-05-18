/*
 * LinkedList.cpp
 *
 *  Created on: 18 May 2015
 *      Author: Jamie
 */

#include "LinkedList.h"

ListNode::ListNode(ListNode* previousItem, void* item, ListNode* nextItem) : previous(previousItem), itemItself(item), next(nextItem)
{
	if (previousItem)
	{
		previousItem->SetNext(this);
	}
	if (nextItem)
	{
		nextItem->SetPrevious(this);
	}
}

ListNode::~ListNode()
{
	if (previous)
	{
		previous->SetNext(this->next);
	}
	if (next)
	{
		next->SetPrevious(this->previous);
	}
}

LinkedList::LinkedList()
{
	numItems = 0;
	frontNode = __null;
	backNode = __null;
}

LinkedList::~LinkedList()
{
	this->Clear();
}

void LinkedList::PushBack(void* item)
{
	if (backNode)
	{
		ListNode* node = new ListNode(backNode, item, __null);
		backNode = node;
	}
	else
	{
		frontNode = new ListNode(__null, item, __null);
		backNode = frontNode;
	}
	numItems++;
}

void LinkedList::PushFront(void* item)
{
	if (frontNode)
	{
		ListNode* node = new ListNode(__null, item, frontNode);
		frontNode = node;
	}
	else
	{
		frontNode = new ListNode(__null, item, __null);
		backNode = frontNode;
	}
	numItems++;
}

void LinkedList::Remove(void* item)
{
	if (frontNode)
	{
		ListNode* currNode = frontNode;
		do
		{
			if (currNode->GetItem() == item)
			{
				break;
			}
			currNode = currNode->GetNext();
		} while (currNode);
		if (currNode)
		{
			delete currNode;
			numItems--;
		}
	}
}

ListNode* LinkedList::NodeAt(int index)
{
	if (index == 0)
	{
		return frontNode;
	}
	else if (index == numItems - 1)
	{
		return backNode;
	}
	else if (index < numItems)
	{
		int temp = numItems >> 1;
		if (index >= temp)
		{
			int currIndex = numItems - 1;
			ListNode* currNode = backNode;
			do
			{
				currNode = currNode->GetPrevious();
				currIndex--;
			} while (index != currIndex);
			return currNode;
		}
		else
		{
			int currIndex = 0;
			ListNode* currNode = frontNode;
			if (index != currIndex)
			{
				do
				{
					currNode = currNode->GetNext();
					currIndex++;
				} while (index != currIndex);
			}
			return currNode;
		}
	}
	return NULL;
}

void* LinkedList::At(int index)
{
	ListNode* node = NodeAt(index);
	if (node)
	{
		return node->GetItem();
	}
	return NULL;
}

void LinkedList::Clear()
{
	if (frontNode)
	{
		do
		{
			ListNode* node = frontNode;
			frontNode = frontNode->GetNext();
			delete node;
		} while (frontNode);
	}
	numItems = 0;
}

void LinkedList::PushAt(void* item, int index)
{
	if (index >= numItems)
	{
		PushBack(item);
	}
	ListNode* currNode = NodeAt(index);
	if (currNode)
	{
		ListNode* currNode2 = currNode->GetPrevious();
		ListNode* newNode = new ListNode(currNode2, item, currNode);
		if (currNode2)
		{
			currNode2->SetNext(newNode);
		}
		currNode->SetPrevious(newNode);
		numItems++;
	}
}



