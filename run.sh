#!/bin/bash
export PMEM_TRACE_ENABLE=$1
./src/redis-server ./redis.conf


