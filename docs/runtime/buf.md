# Buf - Dynamic Buffer Module

The RBuf module is a flexible, dynamic growable buffer structure that is ideal as a network and file buffer.

RBuf has start and end pointers to the data buffer which act as read/write pointers. Routines are provided to get and put data into and out of the buffer and automatically advance the appropriate start/end pointer. By definition, the buffer is empty when the start pointer == the end pointer.

Buffers can be created with a fixed size or can grow dynamically as more data is added to the buffer.

For performance, the specification of RBuf is deliberately exposed. All members of RBuf are implicitly public. However, it is still recommended that wherever possible, you use the accessor routines provided.

## Features

* Dynamically growable memory buffer
* Routines to get references to start and end pointers
* Option to null terminate the buffer
* Formatted add to buffer

## RBuf

The RBuf definition is:

```c
typedef struct RBuf {
    char *buf;      /**< Actual buffer for data */
    char *endbuf;   /**< Pointer one past the end of buffer */
    char *start;    /**< Pointer to next data char */
    char *end;      /**< Pointer one past the last data character */
    ssize buflen;   /**< Current size of buffer */
} RBuf;
```

## API Quick Tour

To create a buffer with an initial size. Set the size to zero for a default size of 4K.

```c
#include "r.h"

RBuf *buf = rAllocBuf(initialSize);

// and to free the buffer

rFreeBuf(buf);
```

To add data to the buffer. It will automatically grow as required.
```c
rPutStringToBuf(buf, "Hello World");
rPutFmtToBuf(buf, "My favorite number is %d", 42);
rPutBlockToBuf(buf, data, dataLen);
```

To get the buffer length

```c
ssize length = rGetBufLength(buf);
```

Note: ssize is a typedef from "osdep.h" for ssize_t which is a 64-bit signed quantity.

To add a NULL character to the buffer without moving the end pointer. i.e.

```c
rAddNullToBuf(buf, data, dataLen);
```

To explicitly grow the buffer:

```c
rGrowBuf(buf, 8000);
```

To see how much space is available in the buffer. This is (endbuf - end).

```c
ssize available = rGetBufSpace(buf);
```

To get a reference to the end of the buffer:

```c
cchar *ptr = rGetBufEnd(buf);

//  and to the start
ptr = rGetBufStart(buf);
```

To adjust the start or the end:

```c
rAdjustBufEnd(buf, amount);
rAdjustBufStart(buf, amount);
```

To copy data out of the buffer, reference the start pointer and adjust:

```c
ssize count = rGetBufLength(buf);
memcpy(rGetBufStart(buf), count);
rAdjustBufEnd(buf, count);
```

To empty the buffer:

```c
rFlushBuf(buf);
```

## API Reference

The full API is specified here:

[Buf API](../../ref/api/r/#rbuf)
