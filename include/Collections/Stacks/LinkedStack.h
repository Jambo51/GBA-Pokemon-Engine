/*
 * LinkedStack.h
 *
 *  Created on: 27 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_STACKS_LINKEDSTACK_H_
#define INCLUDE_COLLECTIONS_STACKS_LINKEDSTACK_H_

#include "../Lists/LinkedList.h"
#include "Stack.h"

using namespace Collections::Lists;

namespace Collections
{
	namespace Stacks
	{
		template <class T> class LinkedStack : public Stack<T>
		{
			private:
				int numItems;
				ListNode<T>* frontNode;
				ListNode<T>* backNode;
			public:
				LinkedStack<T>()
				{
					numItems = 0;
					frontNode = __null;
					backNode = __null;
				}

				~LinkedStack<T>()
				{
					Clear();
				}

				int Size() const { return numItems; }

				T Pop()
				{
					if (frontNode)
					{
						T item = frontNode->GetItem();
						ListNode<T>* node = frontNode;
						frontNode = frontNode->GetNext();
						delete node;
						return item;
					}
					numItems--;
					return T();
				}

				void Push(T item)
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

				T Peek()
				{
					if (frontNode)
					{
						return frontNode->GetItem();
					}
					return T();
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
		};
	}
}



#endif /* INCLUDE_COLLECTIONS_STACKS_LINKEDSTACK_H_ */
