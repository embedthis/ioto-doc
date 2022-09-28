# Ioto Memory Allocator

Ioto provides a wrapper over the standard malloc memory allocator. This wrapper performs global memory allocation checking and is tailored to the needs of embedded applications.

## Memory Allocation

It is difficult and error-prone for programmers to check the result of every API call that can possibly fail due to memory allocation errors. Calls such as strdup and asprintf are often assumed to succeed, but they can, and do fail when memory is depleted.

A better approach is to proactively detect and handle memory allocation errors in one place. The Ioto allocator handles memory allocation errors globally. When Ioto detects a memory allocation failure, it invokes the global memory exception handler. This configurable handler can then decide what is the best course of recovery. The default action is to restart the application.

## Wrapper Routines

The safe runtime provides three memory allocation routines that wrap the standard libc routines.

* **ralloc** &mdash; Allocate memory
* **rfree** &mdash; Free memory
* **ralloct** &mdash; Allocate memory for a given type

The ralloc routine allocates memory and checks for memory failures and invokes the global exception handler if the memory allocation fails.

The rfree routine frees memory and is NULL tolerant. This routine accepts memory allocated via ralloc or malloc.

The ralloct routine is a convenience function to allocate memory for a typed object. For example:

```c
mem = ralloct(struct shape);
```
