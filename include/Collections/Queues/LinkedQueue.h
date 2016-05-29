/*
 * LinkedQueue.h
 *
 *  Created on: 27 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_QUEUES_LINKEDQUEUE_H_
#define INCLUDE_COLLECTIONS_QUEUES_LINKEDQUEUE_H_

#include "../Lists/LinkedList.h"
#include "Queue.h"

using namespace Collections::Lists;

namespace Collections
{
	namespace Queues
	{
		template <class T> class LinkedQueue : public Queue<T>
		{
			private:
				int numItems;
				ListNode<T>* frontNode;
				ListNode<T>* backNode;
			public:
				LinkedQueue<T>()
				{
					numItems = 0;
					frontNode = __null;
					backNode = __null;
				}

				~LinkedQueue<T>()
				{
					Clear();
				}

				int Size() const { return numItems; }

				void Enqueue(T item)
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

				T Dequeue()
				{
					if (frontNode)
					{
						T item = frontNode->GetItem();
						ListNode<T>* node = frontNode->GetNext();
						delete frontNode;
						frontNode = node;
						return item;
					}
					return T();
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
#endif /* INCLUDE_COLLECTIONS_QUEUES_LINKEDQUEUE_H_ */
