LIB = libdc42.a

CC = gcc
AR = ar
RANLIB = ranlib
CFLAGS = -arch i386 -arch x86_64 -fPIC -std=c99 -g

all: $(LIB)

$(LIB): libdc42.c
	$(CC) -c $(CFLAGS) libdc42.c
	rm -f $(LIB)
	$(AR) -ru $(LIB) libdc42.o
	$(RANLIB) $(LIB)

clean:
	rm -rf $(LIB) libdc42.o