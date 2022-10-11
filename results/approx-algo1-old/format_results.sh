#!/usr/bin/env bash

# $1 - Rotation name (e.g., 'rzk')
# $2 - Precision (epsilon) (e.g., 1e-2)

# Formats the raw data produced by run_approx_algo1_count[_MPI].sh

if [[ $# -lt 2 ]]; then
    printf "Usage: %s <rotation_name> <epsilon>\n" "$0"
    exit 1
fi

name=$1
error=$2

grep "# T-count" "${name}_"*"_${error}.txt" |
    awk 'BEGIN{k=1}{printf("k: %3d T-count: %d\n", k, $3); k=k+50}'
