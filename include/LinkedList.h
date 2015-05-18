/*
 * UnorderedMap.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef UNORDEREDMAP_H_
#define UNORDEREDMAP_H_

#include "GlobalDefinitions.h"

class ListNode
{
private:
	ListNode* previous;
	void* itemItself;
	ListNode* next;
public:
	ListNode(ListNode* previousItem, void* item, ListNode* nextItem);
	~ListNode();
	void* GetItem() const { return itemItself; }
	ListNode* GetNext() const { return next; }
	ListNode* GetPrevious() const { return previous; }
	void SetPrevious(ListNode* node) { this->previous = node; }
	void SetNext(ListNode* node) { this->next = node; }
};

class LinkedList
{
private:
	int numItems;
	ListNode* frontNode;
	ListNode* backNode;
public:
	LinkedList();
	~LinkedList();
	int Size() const { return numItems; }
	ListNode* Front() const { return frontNode; }
	ListNode* Back() const { return backNode; }
	void PushBack(void* item);
	void PushFront(void* item);
	void Remove(void* item);
	ListNode* NodeAt(int index);
	void* At(int index);
	void Clear();
	void PushAt(void* item, int index);
};
#endif /* UNORDEREDMAP_H_ */
