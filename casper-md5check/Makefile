
CC=gcc
CFLAGS := $(shell getconf LFS_CFLAGS) -Wall -O2 -g $(shell pkg-config --cflags ply-boot-client)
LDFLAGS=$(shell pkg-config --libs ply-boot-client)

casper-md5check: casper-md5check.c md5.c

clean:
	rm -f *.o casper-md5check
