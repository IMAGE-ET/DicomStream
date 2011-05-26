/*
 * FragmentIterator.h
 *
 *  Created on: May 24, 2011
 *      Author: aboxer
 */

#ifndef FRAGMENTITERATOR_H_
#define FRAGMENTITERATOR_H_

#include "../Parse/protocol.h"
#include <math.h>


class FragmentIterator  {

private:
	bool done;
	size_t size;
	size_t offset;
	size_t chunk;

public:

	FragmentIterator(size_t size, size_t chunk) : done(false), size(size), chunk(chunk)
	{

	}

private:


protected:
	virtual bool nextFragment( FrameFragment& fragment)
	{
		if (done)
			return false;
		size_t size = min(chunk, size-offset);
		fragment.offset = offset;
		fragment.size = size;
		offset += size;
		if (offset == size)
		{
			done = true;
		}
		return true;
	}
};

#endif /* FRAGMENTITERATOR_H_ */
