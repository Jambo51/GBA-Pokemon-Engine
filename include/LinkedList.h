/*
 * UnorderedMap.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef UNORDEREDMAP_H_
#define UNORDEREDMAP_H_

template <class T> class ListNode
{
private:
	ListNode<T>* previous;
	T itemItself;
	ListNode<T>* next;
public:
	ListNode<T>(ListNode* previousItem, T item, ListNode* nextItem) : previous(previousItem), itemItself(item), next(nextItem) { }
	~ListNode<T>()
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

	T & GetItem()
	{
		return itemItself;
	}

	ListNode<T>* GetNext() const { return next; }
	ListNode<T>* GetPrevious() const { return previous; }
	void SetPrevious(ListNode<T>* node) { this->previous = node; }
	void SetNext(ListNode<T>* node) { this->next = node; }
};

template <class T> class LinkedList
{
private:
	int numItems;
	ListNode<T>* frontNode;
	ListNode<T>* backNode;
public:
	LinkedList<T>()
	{
		numItems = 0;
		frontNode = __null;
		backNode = __null;
	}
	~LinkedList<T>()
	{
		this->Clear();
	}
	int Size() const { return numItems; }
	ListNode<T>* Front() const { return frontNode; }
	ListNode<T>* Back() const { return backNode; }

	void PushBack(T item)
	{
		if (frontNode)
		{
			ListNode<T>* node = new ListNode<T>(backNode, item, __null);
			backNode = node;
		}
		else
		{
			frontNode = new ListNode<T>(__null, item, __null);
			backNode = frontNode;
		}
		numItems++;
	}

	void PushFront(T item)
	{
		if (frontNode)
		{
			ListNode<T>* node = new ListNode<T>(__null, item, frontNode);
			frontNode = node;
		}
		else
		{
			frontNode = new ListNode<T>(__null, item, __null);
			backNode = frontNode;
		}
		numItems++;
	}

	void Remove(T item)
	{
		if (frontNode)
		{
			ListNode<T>* currNode = frontNode;
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

	ListNode<T>* NodeAt(int index)
	{
		if (index < numItems)
		{
			int currIndex = 0;
			ListNode<T>* currNode = frontNode;
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

	T & At(int index)
	{
		if (index < numItems)
		{
			int currIndex = 0;
			ListNode<T>* currNode = frontNode;
			if (index != currIndex)
			{
				do
				{
					currNode = currNode->GetNext();
					currIndex++;
				} while (index != currIndex);
			}
			return currNode->GetItem();
		}
	}

	void Clear()
	{
		if (frontNode)
		{
			do
			{
				ListNode<T>* node = frontNode;
				frontNode = frontNode->GetNext();
				delete node;
			} while (frontNode);
		}
		numItems = 0;
	}

	void PushAt(T item, int index)
	{
		ListNode<T>* currNode = NodeAt(index);
		if (currNode)
		{
			ListNode<T>* currNode2 = currNode->GetPrevious();
			ListNode<T>* newNode = new ListNode<T>(currNode2, item, currNode);
			if (currNode2)
			{
				currNode2->SetNext(newNode);
			}
			currNode->SetPrevious(newNode);
			numItems++;
		}
	}
};
#endif /* UNORDEREDMAP_H_ */
