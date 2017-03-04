#!/bin/bash
export PMEM_TRACE_ENABLE=$1	# y or n
export PMEM_NO_MOVNT=1
export PMEM_MMAP_HINT=0x0000100000000000
export PMEM_IS_PMEM_FORCE=1
action=$1

bin=./src/redis-server

if [[ $action == '-h' ]]
then
	$bin -h
else
	$bin ./redis.conf
fi


