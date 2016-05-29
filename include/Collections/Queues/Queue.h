/*
 * Queue.h
 *
 *  Created on: 27 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_QUEUES_QUEUE_H_
#define INCLUDE_COLLECTIONS_QUEUES_QUEUE_H_

namespace Collections
{
	namespace Queues
	{
		template <class T> class Queue
		{
		protected:
			Queue<T>() { }
		public:
			virtual ~Queue<T>()
			{

			}
			virtual int Size() const = 0;
			virtual void Enqueue(T item) = 0;
			virtual T Dequeue() = 0;
			virtual T Peek() = 0;
			virtual void Clear() = 0;
		};
	}
}
#endif /* INCLUDE_COLLECTIONS_QUEUES_QUEUE_H_ */
