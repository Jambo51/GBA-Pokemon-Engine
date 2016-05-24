/*
 * LinkedList.cpp
 *
 *  Created on: 18 May 2015
 *      Author: Jamie
 */

#include "../include/Collections/Lists/LinkedList.h"

namespace Collections
{
	namespace Lists
	{
		template <class T>
		ListNode<T>::ListNode(ListNode* previousItem, T item, ListNode* nextItem) : previous(previousItem), itemItself(item), next(nextItem)
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

		template <class T>
		ListNode<T>::~ListNode()
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

		template <class T>
		LinkedList<T>::LinkedList()
		{
			numItems = 0;
			frontNode = __null;
			backNode = __null;
		}

		template <class T>
		LinkedList<T>::~LinkedList()
		{
			this->Clear();
		}

		template <class T>
		void LinkedList<T>::PushBack(T item)
		{
			if (backNode)
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

		template <class T>
		void LinkedList<T>::PushFront(T item)
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

		template <class T>
		void LinkedList<T>::PushFrontMany(const T* items, int numItems)
		{
			for (int i = 0; i < numItems; i++)
			{
				PushFront(items[i]);
			}
		}

		template <class T>
		bool LinkedList<T>::Remove(T item)
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
					if (numItems == 0)
					{
						frontNode = NULL;
						backNode = NULL;
					}
					return true;
				}
			}
			return false;
		}

		template <class T>
		ListNode<T>* LinkedList<T>::NodeAt(int index) const
		{
			if (index == numItems - 1)
			{
				return backNode;
			}
			else if (index < numItems)
			{
				int temp = numItems >> 1;
				if (index >= temp)
				{
					int currIndex = numItems - 1;
					ListNode<T>* currNode = backNode;
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
			return NULL;
		}

		template <class T>
		T LinkedList<T>::At(int index) const
		{
			ListNode<T>* node = NodeAt(index);
			if (node)
			{
				return node->GetItem();
			}
			return NULL;
		}

		template <class T>
		void LinkedList<T>::Clear()
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
			backNode = NULL;
			frontNode = NULL;
		}

		template <class T>
		void LinkedList<T>::PushAt(T item, int index)
		{
			if (index >= numItems)
			{
				PushBack(item);
			}
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

		template <class T>
		void LinkedList<T>::Replace(int index, T item)
		{
			ListNode<T>* node = NodeAt(index);
			if (node)
			{
				node->SetItem(item);
			}
		}
	}
}



