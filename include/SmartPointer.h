/*
 * SmartPointer.h
 *
 *  Created on: 14 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_SMARTPOINTER_H_
#define INCLUDE_SMARTPOINTER_H_

#include "GlobalDefinitions.h"

class ReferenceCounter
{
	private:
		u32 count;
	public:
		void AddReference()
		{
			count++;
		}

		bool Release()
		{
			count--;
			return count == 0;
		}
};

template <typename T> class SmartPointer
{
	friend class SmartPointerFunctions;
	private:
		T* pointer;
		ReferenceCounter* rc;
	protected:
		SmartPointer(T* pointer, ReferenceCounter* rc)
		{
			this->pointer = pointer;
			this->rc = rc;
			rc->AddReference();
		}
	public:
		SmartPointer()
		{
			pointer = 0;
			rc = new ReferenceCounter();
			rc->AddReference();
		}

		SmartPointer(T* pointer)
		{
			this->pointer = pointer;
			rc = new ReferenceCounter();
			rc->AddReference();
		}

		SmartPointer(const SmartPointer<T> &other)
		{
			this->pointer = other.pointer;
			this->rc = other.rc;
			rc->AddReference();
		}

		~SmartPointer()
		{
			if (rc->Release())
			{
				if ((u32)pointer < 0x02040000 && (u32)pointer >= 0x02000000)
				{
					delete pointer;
				}
				delete rc;
			}
		}

		SmartPointer<T>& operator= (const SmartPointer<T> &sp)
		{
			if (this != &sp)
			{
				if (rc->Release())
				{
					if ((u32)pointer < 0x02040000 && (u32)pointer >= 0x02000000)
					{
						delete pointer;
					}
					delete rc;
				}
				this->pointer = sp.pointer;
				this->rc = sp.rc;
				rc->AddReference();
			}
			return *this;
		}

		T& operator* ()
		{
			return *pointer;
		}

		T* operator-> ()
		{
			return pointer;
		}

		T* operator& ()
		{
			return pointer;
		}

		bool operator== (const SmartPointer<T> &sp)
		{
			return this->pointer == sp.pointer;
		}

		bool operator!= (const SmartPointer<T> &sp)
		{
			return !(this->pointer == sp.pointer);
		}

		bool operator!= (u32 value)
		{
			return (u32)this->pointer != value;
		}

		bool operator> (u32 value)
		{
			return (u32)this->pointer > value;
		}

		bool operator< (u32 value)
		{
			return (u32)this->pointer < value;
		}

		bool operator>= (u32 value)
		{
			return *this > value || *this == value;
		}

		bool operator<= (u32 value)
		{
			return *this < value || *this == value;
		}

		operator bool () const
		{
			return this->pointer != 0;
		}
};

template <typename T> class SmartArrayPointer
{
	friend class SmartPointerFunctions;
	private:
		T* pointer;
		ReferenceCounter* rc;
		SmartArrayPointer(T* pointer, ReferenceCounter* rc)
		{
			this->pointer = pointer;
			this->rc = rc;
			rc->AddReference();
		}
	public:
		SmartArrayPointer()
		{
			pointer = 0;
			rc = new ReferenceCounter();
			rc->AddReference();
		}

		SmartArrayPointer(T* pointer)
		{
			this->pointer = pointer;
			rc = new ReferenceCounter();
			rc->AddReference();
		}

		SmartArrayPointer(const SmartArrayPointer<T> &other)
		{
			this->pointer = other.pointer;
			this->rc = other.rc;
			rc->AddReference();
		}

		~SmartArrayPointer()
		{
			if (rc->Release())
			{
				if ((u32)pointer < 0x02040000 && (u32)pointer >= 0x02000000)
				{
					delete[] pointer;
				}
				delete rc;
			}
		}

		SmartArrayPointer<T>& operator= (const SmartArrayPointer<T> &sp)
		{
			if (this != &sp)
			{
				if (rc->Release())
				{
					if ((u32)pointer < 0x02040000 && (u32)pointer >= 0x02000000)
					{
						delete[] pointer;
					}
					delete rc;
				}
				this->pointer = sp.pointer;
				this->rc = sp.rc;
				rc->AddReference();
			}
			return *this;
		}

		T& operator* ()
		{
			return *pointer;
		}

		T* operator-> ()
		{
			return pointer;
		}

		T* operator& ()
		{
			return pointer;
		}

		T& operator[] (int index)
		{
			return pointer[index];
		}


		bool operator== (const SmartArrayPointer<T> &sp)
		{
			return this->pointer == sp.pointer;
		}

		bool operator== (u32 value)
		{
			return (u32)this->pointer == value;
		}

		bool operator!= (const SmartArrayPointer<T> &sp)
		{
			return !(this->pointer == sp.pointer);
		}

		bool operator!= (u32 value)
		{
			return (u32)this->pointer != value;
		}

		bool operator> (u32 value)
		{
			return (u32)this->pointer > value;
		}

		bool operator< (u32 value)
		{
			return (u32)this->pointer < value;
		}

		bool operator>= (u32 value)
		{
			return *this > value || *this == value;
		}

		bool operator<= (u32 value)
		{
			return *this < value || *this == value;
		}

		operator bool () const
		{
			return this->pointer != 0;
		}

		void Clear(u32 numItems)
		{
			memset32((void*)pointer, 0, (sizeof(T) * numItems) >> 2);
		}

		void CopyTo(SmartArrayPointer<T> destination, u32 offset, u32 length)
		{
			length >>= 2;
			memcpy32((void*)((u32)destination.pointer + offset), (const void*)pointer, length);
		}

		void CopyTo(void* destination, u32 offset, u32 length)
		{
			length >>= 2;
			memcpy32((void*)((u32)destination + offset), (const void*)pointer, length);
		}

		template <typename T2>
		SmartArrayPointer<T2> Cast()
		{
			return SmartArrayPointer((T2*)pointer, rc);
		}
};

class SmartPointerFunctions
{
	private:
		SmartPointerFunctions() { }
		~SmartPointerFunctions() { }
	public:
		template <typename T, typename T2>
		static SmartPointer<T2> Cast(SmartPointer<T> original)
		{
			T2* derived = static_cast<T2*>(original.pointer);
			if (derived)
			{
				SmartPointer<T2> temp = SmartPointer<T2>(derived, original.rc);
				return temp;
			}
			return SmartPointer<T2>();
		}
};

#endif /* INCLUDE_SMARTPOINTER_H_ */
