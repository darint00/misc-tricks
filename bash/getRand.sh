#!/bin/bash

START=$1
LEN=$2

awk -v "seed=$[(RANDOM & 32767) + 32768 * (RANDOM & 32767)]" \
        'BEGIN {srand(seed); printf("%.9f\n", (rand() * '$LEN' )+ '$START') }'
