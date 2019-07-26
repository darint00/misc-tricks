#!/bin/bash

myhost="test19"

#[[ `hostname` =~ ([0-9]+)$ ]] || exit 1

[[ $myhost  =~ ([0-9]+)$ ]] || exit 1
HOSTIDX=${BASH_REMATCH[1]}

echo HOSTIDX=$HOSTIDX

echo "0:  ${BASH_REMATCH[0]}"
echo "1:  ${BASH_REMATCH[1]}"
