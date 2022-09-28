#
#	defines.mk -- Definitions to build Ioto samples with GCC make
#

PROFILE = debug
OS      = $(shell uname | sed 's/CYGWIN.*/windows/;s/Darwin/macosx/' | tr '[A-Z]' '[a-z]')
TOP		= $(realpath $(shell pwd)/../../../ioto)

ifeq ($(ARCH),)
    ifeq ($(OS),windows)
        ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
            ARCH?=x64
        else
            ARCH?=x86
        endif
    else
        ARCH:= $(shell uname -m | sed 's/i.86/x86/;s/x86_64/x64/;s/arm.*/arm/;s/mips.*/mips/')
    endif
endif

LIBDIR 	= $(TOP)/build/$(OS)-$(ARCH)-$(PROFILE)/bin
INCDIR  = $(TOP)/build/$(OS)-$(ARCH)-$(PROFILE)/inc
LIBS	= -lioto -ldl -lpthread -lm
CFLAGS	= -g -I$(INCDIR)

ifeq ($(OS),macosx)
	LDFLAGS	:= -Wl,-rpath,@executable_path/ -Wl,-rpath,@loader_path/ -Wl,-rpath,$(LIBDIR)/ -L$(LIBDIR) $(LIBS)
	MODFLAGS := -dynamiclib -install_name @rpath/libmod_simple.dylib -compatibility_version 1.0 -current_version 1.0
	MODEXT := .dylib
endif
ifeq ($(OS),linux)
	LDFLAGS	:= -L$(LIBDIR) $(LIBS)
	MODEXT := .so
endif
