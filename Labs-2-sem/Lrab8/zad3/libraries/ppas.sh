#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking libproject1.so
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  -init FPC_SHARED_LIB_START -fini FPC_SHARED_LIB_EXIT -soname libproject1.so -shared -L. -o libproject1.so link.res
if [ $? != 0 ]; then DoExitLink libproject1.so; fi
IFS=$OFS
