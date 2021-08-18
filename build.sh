#!/bin/bash
# echo "UPDATE linker map for making your code visible deps/nvml/src/libpmemobj/libpmemobj.map else compilation fails"
#make distclean

#make noopt NVML_DEBUG=yes USE_NVML=yes STD=-std=gnu99 EXTRA_CFLAGS="-D_ENABLE_TRACE -Wno-error -save-temps" REDIS_CFLAGS="-D_ENABLE_UTRACE"
make clean
make STATIC_LINK_PMEMBENCH=yes noopt NVML_DEBUG=yes USE_NVML=yes STD=-std=gnu99 EXTRA_CFLAGS="-D_ENABLE_FTRACE -Wno-error -save-temps" REDIS_CFLAGS="-D_ENABLE_FTRACE -static -static-libgcc" REDIS_LDFLAGS="-static"
# CFLAGS="-static" EXEEXT="-static" LDFLAGS="-I/usr/local/include/"

#export PMEM_TRACE_ENABLE=y


