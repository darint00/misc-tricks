#!/bin/bash

[ $# -ne 1 ] && { printf "Usage: %s <product.tar> <dir>\n" "`basename $0`"; exit; }

SCRIPT_PATH=`dirname $(readlink -f $0)`

{ echo "exiting"; exit;}
