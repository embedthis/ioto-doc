# Thread

Ioto is single threaded and uses fiber coroutines for parallelism. Ioto is not thread safe and you cannot call Ioto APIs from program threads without ensuring all access to Ioto data structures are serialized via thread locks.

Ioto provides a cross platform thread library so you can create threads and implement appropriate locks.

NOTE: this is not a recommended design pattern. It is simpler, faster and more reliable to use fiber coroutines that to use threaded programming.

# API Tour

## Locking

To create a lock:

    RLock *lock = rAllocLock();

and to free a lock

    rFreeLock(lock);

To assert a lock, use **rLock**. This will block the current thread until resumed.

NOTE: do not use this call in a fiber.

    rlock(lock);

To unlock:

    runlock(lock);

To try for a lock without waiting or blocking:

    if (rTryLock(lock)) {
        //  Got the lock
    }

## Spin Locks

Ioto also provides spin locks which may be faster on some operating systems:

```c
rSpinLock(lock)
rSpinUnlock(lock)
```




## API Reference

The full API is specified here:

[Buf API](../../ref/api/r/#rbuf)
