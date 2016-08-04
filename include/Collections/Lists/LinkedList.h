/*
 * UnorderedMap.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef UNORDEREDMAP_H_
#define UNORDEREDMAP_H_

#include "GlobalDefinitions.h"
#include "Collections/Lists/List.h"

namespace Collections
{
	namespace Lists
	{
		template <class T> class ListNode
		{
			private:
				ListNode<T>* previous;
				T itemItself;
				ListNode<T>* next;
			public:
				ListNode<T>(ListNode* previousItem, T item, ListNode* nextItem)
				{
					previous = previousItem;
					itemItself = item;
					next = nextItem;
					if (previousItem)
					{
						previousItem->SetNext(this);
					}
					if (nextItem)
					{
						nextItem->SetPrevious(this);
					}
				}

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
				T GetItem() const { return itemItself; }
				void SetItem(T item) { itemItself = item; }
				ListNode<T>* GetNext() const { return next; }
				ListNode<T>* GetPrevious() const { return previous; }
				void SetPrevious(ListNode<T>* node) { this->previous = node; }
				void SetNext(ListNode<T>* node) { this->next = node; }
		};

		template <class T> class LinkedList : public List<T>
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
					Clear();
				}

				int Size() const { return numItems; }

				ListNode<T>* FrontNode() const { return frontNode; }

				ListNode<T>* BackNode() const { return backNode; }

				void PushBack(T item)
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

				void PushFrontMany(const T* items, int numItems)
				{
					for (int i = 0; i < numItems; i++)
					{
						PushFront(items[i]);
					}
				}

				bool Remove(T item)
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

				ListNode<T>* NodeAt(int index) const
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

				T At(int index) const
				{
					ListNode<T>* node = NodeAt(index);
					if (node)
					{
						return node->GetItem();
					}
					return NULL;
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
					backNode = NULL;
					frontNode = NULL;
				}

				void PushAt(T item, int index)
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

				bool Contains(T item)
				{
					ListNode<T>* currNode = frontNode;
					if (frontNode)
					{
						do
						{
							if (currNode->GetItem() == item)
							{
								return true;
							}
							currNode = currNode->GetNext();
						} while (currNode);
					}
					return false;
				}

				void Replace(int index, T item)
				{
					ListNode<T>* node = NodeAt(index);
					if (node)
					{
						node->SetItem(item);
					}
				}

				T operator[](int index)
				{
					return At(index);
				}
		};
	}
}
#endif /* UNORDEREDMAP_H_ */
