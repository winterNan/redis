#!/bin/bash
action=$1
bin=./src/redis-cli

if [[ $action == '-h' ]]
then
        $bin -h
else
	$bin --lru-test 1000000
fi


