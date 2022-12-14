#
#	Build the documentation
#

all: run

run:
	(sleep 10 ; open http://127.0.0.1:9091) &
	mkdocs serve --dirtyreload

serve:
	mkdocs serve

build: doc

#
#	Must sync all paks to get latest code for APIs
#
doc: sync
	me doc

sync:
	pak sync

LOCAL_MAKEFILE := $(strip $(wildcard ./.local.mk))

ifneq ($(LOCAL_MAKEFILE),)
include $(LOCAL_MAKEFILE)
endif

