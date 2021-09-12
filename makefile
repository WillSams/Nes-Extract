#!/bin/sh

CC = gcc
CFLAGS = -W -Wall -g

BIN	= nesextract

SS=$(wildcard *.c)
OBJS=$(SS:.s=.o)

all: $(BIN)

clean:
	rm -f $(BIN)
	rm -f $(shell find . -name '*.o')

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $< -o $@

install: 
	bash -c 'cp $(BIN) /usr/bin'