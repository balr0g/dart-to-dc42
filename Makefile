PROD = dart_to_dc42

CC = clang
AR = ar
LIBDC42_DIR = libdc42
ARCH = -arch i386 -arch x86_64
CFLAGS = $(ARCH) -g
LDFLAGS = -L/usr/lib -liconv -L/usr/local/lib -losxfuse -L$(LIBDC42_DIR) -ldc42

all: dart_to_dc42.c libdc42-lib
	$(CC) $(CFLAGS) dart_to_dc42.c $(LDFLAGS) -o $(PROD)

libdc42-lib:
	@make -eC $(LIBDC42_DIR)

clean:
	@echo Cleaning libdc42
	@make -eC $(LIBDC42_DIR) clean
	@echo Cleaning dart_to_dc42
	rm -rf $(PROD) $(PROD).dSYM