# Sockets

The Ioto agent provides a cross platform Socket abstraction to make network programming easier and simpler.

The Socket API is fiber aware in that blocking API calls will transparently resume other waiting fibers while waiting for I/O. This enables a simple, straight-line procedural programming style without ugly callbacks or complex threads. See [Fiber Coroutines](../../dev/fiber/) for more details.

All the socket APIs must be called from a fiber.

## API Tour

First you need a socket object. To allocate a socket object:

```c
RSocket *sock = rAllocSocket();

//  and to free

rFreeSocket(sock);
```

### Connecting

To connect to a host or IP address:

```c
int status = rConnectSocket(sock, "www.example.com", 80, 0);
if (status < 0) {
    //  error connecting
}
```

### Listening for Connections
To listen for connections:

```c
rListenSocket(sock, NULL, 80, connectionHandler, data);
```

The second argument is the IP address(s) on which to bind. If NULL, the socket listens on all interfaces.


### Testing the Socket

To test if the socket is closed:

```c
if (rIsSocketClosed(sock)) {
    //  Socket is closed
}
```


To test for end-of-file. i.e. if the peer has closed the other end of the socket:

```c
if (rIsSocketEof(sock)) {
    //  No more data
}
```


To determine if a socket is using TLS. i.e. is secure:

```c
if (rIsSocketSecure(sock)) {
    //  Connection is using TLS
}
```


### Closing the Socket

To close a socket:

```c
rCloseSocket(sock);

//  Still need to free the socket resources
rFreeSocket(sock);
```

### Reading Data

To read from a socket. The read call will return with whatever bytes are available. If none is available, this call will block and yield the current fiber and resume another fiber. When data is available, the call will resume.

```c
ssize count = rReadSocket(sock, buf, sizeof(buf), deadline);

The last argument to rReadSocket (and some other Socket APIs) is a deadline. This is time at which the read request should be aborted. Note: this is not a timeout value, but rather a time value.

Use the following to get a deadline of 30 seconds.

```c
Time deadline = rGetTime() + (30 * 1000);
```

Set the deadline to zero to use the Ioto default deadline timeout which is infinite.

### Writing Data

To write to a socket:

To write a block of data to a socket, use rWriteSocket. If the socket is in non-blocking mode (the default), the write may return having written less than the required bytes. If no data can be written, this call will yield the current fiber and resume another fiber. When data is available, the call will resume.

```c
ssize count = rWriteSocket(sock, buf, bufSize, deadline);
```


### Using TLS
To configure the socket TLS certificates, use rSetSocketCerts:

```c
rSetSocketCerts(socket, privateKey, certificate, authority, revoke);
```

To select the preferred ciphers:

```c
rSetSocketCiphers(sock, cipherList);
```

To control how the Socket will verify peers:

```c
rSetSocketVerify(sock, verifyPeer, verifyIssuer);
```

## API Reference

The full API is specified here:

[Socket API](../../ref/api/r/#rsocket)
