#!/bin/bash
export PMEM_TRACE_ENABLE=$1	# y or n
./src/redis-server ./redis.conf


