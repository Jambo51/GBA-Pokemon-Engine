/*
 * Stack.h
 *
 *  Created on: 27 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_STACKS_STACK_H_
#define INCLUDE_COLLECTIONS_STACKS_STACK_H_

namespace Collections
{
	namespace Stacks
	{
		template <class T> class Stack
		{
		protected:
			Stack<T>() { }
		public:
			virtual ~Stack<T>()
			{

			}
			virtual int Size() const = 0;
			virtual void Push(T item) = 0;
			virtual T Pop() = 0;
			virtual T Peek() = 0;
			virtual void Clear() = 0;
		};
	}
}

#endif /* INCLUDE_COLLECTIONS_STACKS_STACK_H_ */
