#!/usr/bin/env bash

name=$1
error=$2

grep "# T-count" "${name}_"*"_${error}.txt" |
    awk 'BEGIN{k=1}{printf("k: %3d T-count: %d\n", k, $3); k=k+50}'
