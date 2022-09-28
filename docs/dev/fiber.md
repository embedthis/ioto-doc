# Fiber Coroutines

To implement parallelism in an application, a developer has three choices:

1. Threads
2. Non-blocking APIs with callbacks
3. Fiber coroutines

## Threads

Programming with threads can be appealing at first, however a multithreaded design can be problematic. Subtle programming errors due to timing related issues, multithread lock deadlocks and race conditions can be extraordinarily difficult to detect and diagnose. All too often, they appear in production deployments.

## Callbacks

The second approach of using non-blocking APIs with callbacks is simpler to debug. But code quality suffers with the all too common "callback-hell". Relatively simple algorithms become obscure when scattered over cascading callbacks.

## Fiber Coroutines

A compelling (emerging) alternative, is **Fiber coroutines**. A fiber coroutine is code that runs with its own stack and cooperatively yields to other fibers when it needs to wait.

You can think of a fiber as a thread, but only one fiber runs at a time so there is no need for thread locking or synchronizing. For Go programmers, fibers are like Go routines. For JavaScript developers, fibers are similar to async/await.

Fibers allow programs to overlap waiting for I/O or other events with useful compute tasks. They achieve parallelism without the pain.

Fibers solve the main problem with multi-threaded programming where multiple threads access the same data at the same time and require complex locking to safeguard data integrity. Fibers solve the main problem with non-blocking callbacks by enabling a procedural straight line coding style.

Fibers are not perfect. They will not let you utilize all the CPU cores of a system within one program. But for the use case of embedded device management, this is not a significant concern. Device management applications are generally secondary in purpose to the primary role of the device and consequently should not be monopolizing the CPU cores of the device.

## Parallelism Compared

Consider a **threaded** example:

```c
int count = 0;
pthread_mutex_t mutex;

void increment() {
    pthread_mutex_lock(&mutex);
    count = count + 1;
    pthread_mutex_unlock(&mutex);
}

void getCount() {
    int c;
    pthread_mutex_lock(&mutex);
    c = count;
    pthread_mutex_unlock(&mutex);
    return c;
}
```

Now consider the **fiber** solution:

```c
int count = 0;

void increment() {
    count = count + 1;
}

void getCount() {
    return ccount;
}
```

Since only one segment of code is executing at any one time, there is no possibility of fiber collisions.

## Eliminating callbacks

When doing I/O, applications can choose to perform blocking or non-blocking I/O. Blocking I/O while being simpler, means the application cannot perform any other functions while waiting for I/O to complete.

Consider an application that needs to perform a REST HTTP request to retrieve some remote data. While this request is waiting several seconds, the application cannot perform any other task as it is blocked waiting for the request to complete.

Non-blocking I/O solves this problem, but creates another: "callback hell".

Consider this pseudo-example:

```c
//  Issue a request and invoke the onData callback on completion
httpFetch("https://www.example.com", onData)
return;

//  First Callback
static void onData(HttpResult *result)
{
    if (!result) {
        //  Invoke another request
        httpFetch("https://www.backup.com/);
    }
}

//  Second Callback
static void onComplete(HttpResult *result)
{
    //  Now we done and can process the result
}
```

You can see that callbacks quickly obscure the code's intent.

The alternative Ioto code using **fiber coroutine** would look like this:

```c
int data = urlGet("https://www.example.com");
if (!data) {
    data = urlGet("https://www.backup.com/");
}
```

The calls to urlFetch will yield and other fibers will run while waiting for I/O. When the request completes, this fiber is transparently resumed and execution continues.

Fiber-based code is simpler to code, debug and maintain. When converting Ioto from callbacks to fibers, several of our algorithms reduced in lines of code by over 30%.

## Fibers in Practice

In practice, you typically don't need to explicitly code fiber yielding or resuming. The Ioto socket APIs are fiber-aware and will do the yielding for you. The **rReadSocket** and **rWriteSocket** APIs will block the current fiber as required, but other fibers will continue to run. NOTE: that only one fiber is ever running at a time.

In all Ioto services, including the web server, Url client, MQTT client and AWS services: the async APIs are fiber-aware and will yield and resume automatically.

For example:

```c
char buf[1024];

while ((nbytes = rSocketRead(sock, buf, sizeof(buf))) > 0) {
    printf("Got body data %.*s\n", (int) nbytes, buf);
}
```


## Main Program

When using the Ioto fiber coroutines, your main program typically performs little processing before calling **rInit** to create your first fiber. This fiber can then continue initialization and use the full fiber API.

While you can use many of the "R" runtime APIs from your main program (outside a fiber coroutine), you cannot call **rReadSocket**, **rWriteSocket** and **rConnectSocket** in your main program. It is best practice to call rInit as soon as possible and complete initialization inside a fiber.

If you must read and write from sockets before calling **rInit**, we provide the [rReadSocketSync](http://127.0.0.1:4000/ref/api/r.md#r_8h_1aa75ed2c407f881549fadace8ec56a3bc) and [rWriteSocketSync](http://127.0.0.1:4000/ref/api/r.md#r_8h_1a4a9bc1513a3f0a6f9ef8cd02a91a7041) APIs for that purpose.

## Ioto I/O API

Ioto builds fiber support into the lowest layer of the "R" portable runtime. The following APIs support automatic fiber yielding:

* [rReadSocket](../ref/api/r.md#r_8h_1a5e68016e4b9381eb07d94855361e4a6d)
* [rWriteSocket](../ref/api/r.md#r_8h_1a59d42a597c69a42387f41d62f0e8c5b2)
* [rSleep](../ref/api/r.md#r_8h_1a35b19891b3c32f496ee52b157cae938a)

These APIs will automatically yield and resume as required.

Furthermore, if you are using TLS, the **rConnectSocket** API must only be called inside a fiber. This is because the handshaking exchange I/O is performed using fiber read/write primities internally.

## Fiber API

Ioto supports a low level fiber API so you can construct your own fiber-enabled primitives.

* [rYieldFiber](http://127.0.0.1:4000/ref/api/r.md#r_8h_1a531c892493b60bb2088705d7f4e447cb)
* [rResumeFiber](http://127.0.0.1:4000/ref/api/r.md#r_8h_1a059333256cfab39b5037149625e1133b)
* [rSpawnFiber](http://127.0.0.1:4000/ref/api/r.md#r_8h_1a116c72a151fb75665eaef53222bcae37)

Use **rYieldFiber** to yield the CPU and switch to another fiber. You must make alternate arrangements to call **rResumeFiber** when required.

Use **rSpawnFiber** to create a new fiber and immediately switch to it. For example:

```c
void myFiberFunction(void *arg) {
    //  code here runs inside a fiber
}
rSpawnFiber(myFiberFunction, arg);
```

## Integrating with External Services

But what should you do if you need to invoke an external service that will block?

You have two alternatives:

1. Use Non-Blocking APIs
2. Use threads

### Non-Blocking

Ioto provides a flexible centralized eventing and waiting mechanism that can support any service that provides a select() compatible file descriptor.

If the external service has a non-blocking API and provides a file descriptor that is compatible with select or epoll, you can use the Ioto runtime **wait** APIs to be signaled when the external service is complete.

To wait for I/O on a file descriptor, call **rAllocWait** to create a wait object and **rSetWaitHandler** to nominate an event function to invoke.

For example:

```c
wait = rAllocWait(fd);
rSetWaitHandler(wait, fn, arg, R_READABLE);
```

The nominated function will be run on a fiber coroutine when I/O on the file descriptor (fd) is ready.


### Threads

The other option is to create a thread. However you must take care to properly yield the fiber first. The runtime provides a convenient **rSpawnThread** API that will do this for you. It will create a thread, yield the current fiber and then invoke your threadMain. When your threadMain exits, it will automatically resume the fiber.

For example:

```c
rSpawnThread(threadMain, arg);

static void threadMain(void *arg)
{
    data = getFromExternalService();
    return data;
}

```

## Manual Yield and Resume

Though unlikely, you may have a need to manually create fibers and yield and resume explicitly.

The APIs for this are: **rAllocFiber**, **rYieldFiber** and **rResumeFiber**.

See the [Runtime API](../../ref/api/r/) for more details.
