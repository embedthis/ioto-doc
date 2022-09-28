# R API

The Safe Runtime (R) is a portable runtime library for embedded applications.

The R library provides management for binary searching, buffering, error handling, events, events, files, hashing, lists, logging, memory, ssl, sockets, strings, and date/time functions. It also provides a foundation of safe routines for secure programming, that help to prevent buffer overflows and other security threats. The library can be used in both C and C++ programs.

The R library uses a set extended typedefs for common types. These include: bool, cchar, cvoid, uchar, short, ushort, int, uint, long, ulong, int32, uint32, int64, uint64, float, and double. The cchar type is a const char, cvoid is const void. Several types have "u" prefixes to denote unsigned qualifiers.

The library includes a memory allocator and global memory allocation handler.

The library provides support for fiber coroutines to enable parallel programming without callbacks or complex threads. The network APIs use fibers to transparently block the fiber and resume other fibers automatically. This enables a straight-line "blocking" programming paradigm while enabling other fibers to run as required.

DOC_CONTENT
