# Ioto Memory Allocator

Ioto provides a wrapper over the standard malloc memory allocator. This wrapper performs global memory allocation checking and is tailored to the needs of embedded applications.

## Memory Allocation

It is difficult and error-prone for programmers to check the result of every API call that can possibly fail due to memory allocation errors. Calls such as strdup and asprintf are often assumed to succeed, but they can, and do fail when memory is depleted.

A better approach is to proactively detect and handle memory allocation errors in one place. The Ioto allocator handles memory allocation errors globally. When Ioto detects a memory allocation failure, it invokes the global memory exception handler. This configurable handler can then decide what is the best course of recovery. The default action is to restart the application.

## Wrapper Routines

The safe runtime provides three memory allocation routines that wrap the standard libc routines.

* **rAlloc** &mdash; Allocate memory
* **rFree** &mdash; Free memory
* **rAlloct** &mdash; Allocate memory for a given type

The rAlloc routine allocates memory and checks for memory failures and invokes the global exception handler if the memory allocation fails.

The rFree routine frees memory and is NULL tolerant. This routine accepts memory allocated via rAlloc or malloc.

The rAllocType routine is a convenience function to allocate memory for a typed object. For example:

```c
mem = rAlloc(struct shape);
```
