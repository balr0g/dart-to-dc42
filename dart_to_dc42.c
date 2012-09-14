#include <stdio.h>
#include "libdc42/libdc42.h"

int main(int argc, char **argv)
{
    if (argc != 3) {
        fprintf(stderr, "Usage: %s infile.dart outfile.dc42\n", argv[0]);
        exit(1);
    }
    dart_to_dc42(argv[1], argv[2]);
    return 0;
}