# Ioto Safe Runtime (R)

Ioto is built upon a safe portable runtime (R). This layer insulates the rest of Ioto from the underlying platform and allows it to be highly portable to new operating systems or hardware.

![Ioto Architecture](../images/ioto-agent.png)

The safe runtime provides a suite of services that facilitate the creation of high performance, non-blocking management applications by providing: fiber coroutines, lists, hashing, safe strings, buffering, timers, events, networking, buffer management and JSON parsing.

The safe runtime provides a more secure environment in which to program as it replaces 'C' APIs that are prone to buffer overflows and other similar security exploits. The safe runtime includes a fast, safe string library that supports a secure programming style.

# Ioto Types

The Ioto Agent uses an operating system dependent layer called "osdep".

By including "osdep.h", you gain access to these cross-platform types. Some types are implemented natively on some platforms and others are provided by "osdep".


## Quick Tour

Here are some primitive data types:

```c
bool   b;
int8   i8;
int16  i16;
int32  i32;
int64  i64;
uint8  u8;
uint16 u16;
uint32 u32;
uint64 u64;
schar  c;      //  Signed char
uchar  c;      //  Unsigned char
cchar  c;      //  Const char
cuchar  c;     //  Const unsigned char
```

Other useful types:

```c
ssize   length;     //  64-bit signed length
Time    time;       //  Time in milliseconds since Jan 1, 1970
Ticks   ticks;      //  Elapsed time in system millisecond ticks (never goes backwards)
```

For a full list of the osdep types, see: [OSDEP API](../../ref/api/osdep/)


## Return Values

Many Ioto APIs return an integer value that is zero for success and otherwise set to a negative error code.

Here are the return codes used by the Ioto runtime:

```c
#define R_ERR_OK              0
#define R_ERR_BASE            -1
#define R_ERR                 -2
#define R_ERR_ABORTED         -3
#define R_ERR_ALREADY_EXISTS  -4
#define R_ERR_BAD_ACK         -5
#define R_ERR_BAD_ARGS        -6
#define R_ERR_BAD_DATA        -7
#define R_ERR_BAD_FORMAT      -8
#define R_ERR_BAD_HANDLE      -9
#define R_ERR_BAD_NULL        -10
#define R_ERR_BAD_REQUEST     -11
#define R_ERR_BAD_RESPONSE    -12
#define R_ERR_BAD_SESSION     -13
#define R_ERR_BAD_STATE       -14
#define R_ERR_BAD_SYNTAX      -15
#define R_ERR_BAD_TYPE        -16
#define R_ERR_BAD_VALUE       -17
#define R_ERR_BUSY            -18
#define R_ERR_CANT_ACCESS     -19
#define R_ERR_CANT_ALLOCATE   -20
#define R_ERR_CANT_COMPLETE   -21
#define R_ERR_CANT_CONNECT    -22
#define R_ERR_CANT_CREATE     -23
#define R_ERR_CANT_DELETE     -24
#define R_ERR_CANT_FIND       -25
#define R_ERR_CANT_INITIALIZE -26
#define R_ERR_CANT_LOAD       -27
#define R_ERR_CANT_OPEN       -28
#define R_ERR_CANT_READ       -29
#define R_ERR_CANT_WRITE      -30
#define R_ERR_DELETED         -31
#define R_ERR_MEMORY          -32
#define R_ERR_NETWORK         -33
#define R_ERR_NOT_CONNECTED   -34
#define R_ERR_NOT_INITIALIZED -35
#define R_ERR_NOT_READY       -36
#define R_ERR_READ_ONLY       -37
#define R_ERR_TIMEOUT         -38
#define R_ERR_TOO_MANY        -39
#define R_ERR_WONT_FIT        -40
#define R_ERR_WOULD_BLOCK     -41
#define R_ERR_MAX             -42
```

## NULL Tolerance

Ioto adopts a technique call NULL tolerance where APIs, wherever possible, tolerate NULL arguments and attempt to do something reasonable with their arguments, rather than crashing the applications.

The standard C library is not NULL tolerant. If you pass a NULL pointer to routines such as as free() or strlen() your program will crash.

The Ioto memory allocator is NULL tolerant when calling **rfree**. Similarly, Ioto provides a safe string library that will accept NULL arguments wherever possible. In the case of strlen, Ioto provides **slen()** which will return zero if passed a NULL pointer.
