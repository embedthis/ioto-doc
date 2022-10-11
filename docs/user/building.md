# Building Ioto from Source

Ioto releases are available as source code distributions from the [Builder Site](https://admin.embedthis.com). To download, first create an account and login, then define your product and select Ioto as the licensed software.

Finally, click the download link and select the Ioto source code package.

[Download Source Package](https://admin.embedthis.com){ .md-button .md-button--primary }

The Ioto source distribution contains all the required source files, headers, and test frameworks to reconfigure, build, and verify Ioto. The software supports two methods for building from source.

* Make or Nmake</a>
* Visual Studio or Xcode

You can build by typing **make** or you can select one of the IDE projects under the **projects** directory.

Several build environments are supported:

* **Linux** &mdash; Linux 4 with GNU C/C++
* **Windows** &mdash; Microsoft Windows 8 with Visual Studio 2017 or later (Professional or Community Edition)
* **Mac OS X** &mdash; Mac OS X 10.12 or later

For other environments, you will need to cross-compile. The source code has been designed to run on FreeBSD, Linux, Windows, Mac OS X, VxWorks, FreeRTOS and other operating systems. It has been tested under Fedora and Ubuntu Linux based on the Linux 4 Kernel, Microsoft Windows 8 (32 and 64-bit), and MAC OS X 10.12.

## Building with Make or Nmake

Ioto is provided with a suite of generated, pre-configured Makefiles for common platforms. These are simple, clean, generated makefiles that build a default configuration for a specific operating system. These makefiles are provided under the *./projects* directory.</p>

## Make

A top level Makefile is also provided that detects your operating system and CPU architecture and then invokes the appropriate project Makefile for your system. To run:

```bash
make
```

### Windows Nmake

On Windows, a *make.bat* file is provided to to invoke nmake. The make.bat file first invokes *projects/windows.bat* to setup the necessary Visual Studio environment variables for compiling. If you have already setup your Visual Studio environment by running *vcvarsall.bat*, the windows.bat will invoke the makefile without modifying your environment.

To build on Windows with nmake, type:

```bash
make
```

## Modifying the Make Defaults

You do not need to use a <em>configure</em> program when building via make. Rather, you supply configuration options directly to make. These options override default values defined by the "projects/ioto-OS-default.mk" makefile and by the "projects/ioto-OS-debug-me.h" file.

For example, to disable all AWS cloud integration:

```bash
make ME_COM_CLOUD=0
```

Configurable components are enabled by setting their corresponding ME_COM_NAME option to "1", and can be disabled by setting to "0". On windows, set the variables in your environment rather than passing on the command line.

By defining make variables such as CC and CFLAGS, you can modify the compiler options or cross-compile. This is the also the technique used when cross-compiling.</p>

To see the list of configurable options, run *make help*:

```bash
make help

usage: make [clean, compile, deploy, install, run, uninstall]

The default configuration can be modified by setting make variables

Set to 0 to disable and 1 to enable:

  ME_COM_CLOUD       # Enable AWS cloud integration
  ME_COM_SERIALIZE     # Enable Factory device serialization
  ME_COM_LOGS        # Enable ingestion of log files into AWS cloud
  ME_COM_MQTT        # Enable local MQTT client
  ME_COM_SHADOW      # Enable AWS IOT shadow support
  ME_COM_SSL         # Enable SSL/TLS
  ME_COM_SYNC        # Enable state sync with AWS database
  ME_COM_URL         # Enable local HTTP client
  ME_COM_WEB         # Enable local HTTP web server

For example, to disable the web server:

  ME_COM_WEB=0 make

To build with OpenSSL: Add ME_COM_OPENSSL_PATH when using a custom OpenSSL build

  ME_COM_OPENSSL=1 ME_COM_OPENSSL_PATH=/path/to/openssl/build

Other make environment variables:
  ARCH               # CPU architecture (x86, x64, ppc, ...)
  OS                 # Operating system (linux, macosx, windows, vxworks, ...)
  CC                 # Compiler to use
  LD                 # Linker to use
  CONFIG             # Output directory for built items. Defaults to OS-ARCH-PROFILE
  CFLAGS             # Add compiler options. For example: -Wall
  DEBUG              # Set to "debug" for symbols, "release" for optimized builds
  DFLAGS             # Add compiler defines. For example: -DCOLOR=blue
  IFLAGS             # Add compiler include directories. For example: -I/extra/includes
  LDFLAGS            # Add linker options
  LIBPATHS           # Add linker library search directories. For example: -L/libraries
  LIBS               # Add linker libraries. For example: -lpthreads
  PROFILE            # Set to "static" for static linking or "default" for dynamic

Use "SHOW=1 make" to show executed commands.
```

## Installing with Make

You can install the newly built software via:

```bash
sudo make install
```

You can remove by:

```bash
sudo make uninstall
```

!!! Note
    It is essential when invoking *make uninstall*, that you provide the same make flags and options as you did when compiling. This is because the Makefile will conditionally install only the selected components for those options.

## Deploying

If you need to deploy to a different system or capture the build artifacts, you can install to a specific directory via:

```bash
make deploy
```

This will install to the *deploy* directory under the output platform directory.

## Cross Compiling with Make

Building Ioto for platform different to that of the local system is called *cross compiling*. Sometimes this compiling is just for a different instruction set (say x64 instead of x86). Other times, it is for a completely different operating system and/or CPU architecture. In such cases, a cross-compiler is typically required to build for the target platform.

To cross compile, you will typically need to install a cross-compiler tool chain for your target architecture. Once installed and before you attempt to build Ioto, it is best to test compiling a simple, stand-alone *HelloWorld* program to ensure the cross compiler is working correctly.

To cross-compile Ioto, you invoke the relevant project makefile and pass the required CPU architecture as a make variable. For example, to cross compile for VxWorks on ARM:

```bash
make -f projects/ioto-vxworks-default.mk ARCH=arm PROFILE=debug
```

When make executes, it places the output products (executables, libraries and objects) in a platform-specific output directory. This is named using the form: OS-ARCH-PROFILE. For example: vxworks-arm-debug. In this manner, make can be invoked multiple times, once for each target platform and the results will be captured in separate platform output directories. Some of the supported architectures for the ARCH field are:

    arm, mips, ppc, x64 and x86.

The PROFILE variable is a descriptive name chosen by you for your configuration.

If there is not a makefile for your target operating system, copy the closest makefile and edit to suit your target platform.

### Specifying the CPU

The build will use the generic CPU type within the specified architecture. To override the default choice and specify a CPU type within an architecture, use the CPU variable. For example:

```bash
make OS=vxworks ARCH=arm CPU=arm7tdmi
```


### Specifying a Tool Chain

You may need to specify where make can locate your cross-compiler and other tools. You can supply these via the make variables: CC, CFLAGS, DFLAGS, IFLAGS, LD and LDFLAGS. For example:

```bash
make CC=/opt/bin/ccarm.exe LD=/opt/bin/ccarm.exe ARCH=arm PROFILE=release -f projects/ioto-vxworks-default.mk
```


## Building with an IDE

Ioto includes Visual Studio and Xcode projects that provide easy access for building and debugging. The generated IDE projects will build Ioto using default settings and are somewhat limited in their configurability.

### Building with Visual Studio

To build a Visual Studio project, run Visual Studio 2017 or later. Then open the relevant *projects/ioto-windows.sln* solution project. Select **Build Solution** to build. You may need to upgrade the projects in later Visual Studio releases. Don't forget to set the correct executable as the startup project before running the application.

### Building with Xcode

To build with the Xcode on Mac OS X, run Xcode 12 or later and open the projects/ioto-macosx.xcodeproj project. Then select the Product -> Build menu option to build the software. To debug, you will need to create use Product -> Edit Scheme to set the executable to run under the Info tab, and define the working directory under the Options tab.



## Building with  OpenSSL

Ioto includes support for multiple TLS stacks including:

* [MbedTLS](https://tls.mbed.org)
* [OpenSSL](https://www.openssl.org)

MbedTLS is a compact TLS implementation suitable for embedded devices. Ioto includes the MbedTLS distribution and will build with it by default. OpenSSL is a leading open source TLS stack that is faster, but bigger.

### Downloading OpenSSL

Most Linux distributions include OpenSSL with their default distribution. On Windows or MacOS you must first download OpenSSL (https://www.openssl.org/source/) and build it from source. We support the latest stable and LTS releases only. Once OpenSSL is built, you will need to supply the Ioto project with the pathname to your OpenSSL source code directory.


## Building with OpenSSL via Make

If you are building with <em>make</em>, first copy the built OpenSSL libraries to your build/*/bin directory. Then set the path to your OpenSSL source directory when you run make:

```bash
make ME_COM_OPENSSL=1 ME_COM_OPENSSL_PATH=/path/to/openssl SHOW=1
```

## Building Ioto with OpenSSL via Visual Studio

To set the path to your OpenSSL source directory, select "View -> Property Manager". Select "ioto" and edit the "product"  property page by expanding Debug. In the "product Property Pages" dialog, add a User Macro definition for the OpenSSL source directory.

```
ME_COM_OPENSSL_PATH path/to/openssl
```

## Building Ioto with OpenSSL via Xcode

To set the path to your OpenSSL source directory, click on "ioto-macosx-default" on the left to display the project settings. Select under "PROJECT" the "ioto-macosx-openssl_10" project and click on "Build Settings" in the panel in the center. Scroll down to define the path to your OpenSSL source code directory in the ME_COM_OPENSSL_PATH property.


### GitHub Issues

A GitHub repository is used to track issues and for discussions.

Go to the [GitHub Issues](https://github.com/embedthis/ioto-doc) to track bugs, security issues or participate in general discussions regarding Ioto.
