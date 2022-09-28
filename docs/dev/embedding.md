# Embedding the Ioto Agent

The Ioto agent is provided as a stand-alone program and as a library that can be included with your programs for a more customized experience.

The Ioto agent can be customized two ways:

1. Use the Ioto main() and provide your "start" and "stop" functions.
2. Use your own main() and link with the Ioto library.


## Use the Ioto Main

The first way to integrate Ioto is to use the Ioto main program and provide your own start and stop functions. In this manner, your app becomes empowered with MQTT, HTTP and AWS integration services.

Ioto can be customized by providing your own **iaStart** and **iaStop** functions. These functions are invoked by Ioto during startup and shutdown.

The default versions of these functions are provided by the Ioto library. However if you provide your alternates and link against them before libioto.a, your versions will be used instead.

The embedding API requires only a few lines of code. See the "Link Library Sample" provided under the samples directory in the source distribution.

To include the Ioto library in your program you need to do the following things:

1. Add **#include "ioto/agent.h"** to the relevant source files.
2. Add the libioto.a library to your Makefile.
3. Provide an **iaStart** function to initialize your code and **iaStop** function to terminate your code.
4. Build your application.
4. Create or edit the Ioto **config.json** and other Ioto config files to suit your needs.

### Embedding API

The following code demonstrates the Ioto embedding API.

```c
#include "ioto/agent.h"

PUBLIC void iaStart(void *arg)
{
    rinfo("sample", "Hello World\n");
}
```

To build this sample and link with the Ioto library:
```bash
cc -o server server.c -lioto
```

## Provide your own main()

The second way to integrate Ioto is to create your own main program and link with the Ioto library.

This method is desirable if you have more extensive customizations or need to parse custom command line options.

The Ioto libioto.a library also includes a default main() program. If you provide your own main() and link it before the libioto.a, then your main will be used instead.

See the "Link Main Sample" under the samples directory for an example.

To build with your own main, you need to do the following things:

1. Add **#include "ioto/agent.h"** to the relevant source files.
2. Add the **libioto.a** library to your Makefile.
3. Provide a main().
4. Invoke ioInit and ioTerm.
5. Build your application.
6. Create or edit the Ioto **config.json** and other Ioto config files to suit your needs.

The following code demonstrates providing your own main().

```c
#include "ioto/agent.h"

static void start(void *arg);

int main(int argc, char** argv)
{
    rInit((RFiberProc) start, 0, 0);

    //  Block until rStop()
    rServiceEvents();
    ioTerm();
    rTerm();
    return 0;
}

static void start(void *arg)
{
    ioInit(0);
    rinfo("sample", "Hello World\n");
}
```

To build this sample and link with the Ioto library:

```bash
cc -o server server.c -lioto
```


## Samples

The "Link Library Ioto" sample demonstrates linking with the Ioto library.
The "Link Main Ioto" sample demonstrates linking with your own main.

### More Details

For more details about the embedding API, please consult the [Ioto APIs](../ref/api/ioto.md).
