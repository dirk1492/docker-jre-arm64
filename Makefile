.PHONY: build push clean

VERSION = 8u121
KEY=e9e7ea248e2c4826b92b3f075a80e441
 
SUBDIRS = openjdk oracle 

build:
	for dir in $(SUBDIRS); do \
		VERSION=$(VERSION) KEY=$(KEY) $(MAKE) -e -C $$dir build; \
	done 
push:
	for dir in $(SUBDIRS); do \
		VERSION=$(VERSION) $(MAKE) -e -C $$dir push; \
	done 
clean:
	for dir in $(SUBDIRS); do \
		VERSION=$(VERSION) $(MAKE) -e -C $$dir clean; \
	done 
