#ifndef MIO0DECODE_H
#define MIO0DECODE_H
// MIO0 decoder by shyguyhex 2015
// usage:
//
// void* mio0decode (
//   void * source,       // big endian mio0 block
//   int  * dec_size      // size of decompressed data
//   int  * cmp_size      // if not NULL, size of compressed data
// );
//
// creates a buffer for decompressed data and returns a pointer to it

void* mio0decode(void * source, int * dec_size, int *cmp_size);

#endif // MIO0DECODE_H
