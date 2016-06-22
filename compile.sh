#!/bin/bash
make distclean;
make USE_NVML=yes STD=-std=gnu99 EXTRA_CFLAGS="-D_ENABLE_TRACE -Wno-error -save-temps"
export PMEM_TRACE_ENABLE=y


