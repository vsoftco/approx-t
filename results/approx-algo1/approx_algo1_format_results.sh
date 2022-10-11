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

for file in "${name}_"*"_${error}.txt"; do
    k=$(echo "$file" | awk -F"_" '{print $2}')
    grep -E "# T-count: [0-9]+" "$file" |
        awk -v k="$k" '{printf("k: %03d T-count: %d\n", k, $3)}'
done
