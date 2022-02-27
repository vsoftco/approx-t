#!/usr/bin/env bash

# Run from inside ./data
# Requires ./format_results.sh in the same directory

./tools/run_approx_algo1_count.sh rxk 8 1e-2 && ./format_results.sh rxk 1e-2 >_rxk_1e-2.txt
./tools/run_approx_algo1_count.sh ryk 8 1e-2 && ./format_results.sh ryk 1e-2 >_ryk_1e-2.txt
./tools/run_approx_algo1_count.sh rzk 8 1e-2 && ./format_results.sh rzk 1e-2 >_rzk_1e-2.txt

./tools/run_approx_algo1_count.sh rxk 8 3e-3 && ./format_results.sh rxk 3e-3 >_rxk_3e-3.txt
./tools/run_approx_algo1_count.sh ryk 8 3e-3 && ./format_results.sh ryk 3e-3 >_ryk_3e-3.txt
./tools/run_approx_algo1_count.sh rzk 8 3e-3 && ./format_results.sh rzk 3e-3 >_rzk_3e-3.txt

./tools/run_approx_algo1_count.sh rxk 8 5e-3 && ./format_results.sh rxk 5e-3 >_rxk_5e-3.txt
./tools/run_approx_algo1_count.sh ryk 8 5e-3 && ./format_results.sh ryk 5e-3 >_ryk_5e-3.txt
./tools/run_approx_algo1_count.sh rzk 8 5e-3 && ./format_results.sh rzk 5e-3 >_rzk_5e-3.txt

./tools/run_approx_algo1_count.sh crzk 8 1e-2 && ./format_results.sh crzk 1e-2 >_crzk_1e-2.txt
./tools/run_approx_algo1_count.sh crzk 8 3e-3 && ./format_results.sh crzk 3e-3 >_crzk_3e-3.txt
./tools/run_approx_algo1_count.sh crzk 8 5e-3 && ./format_results.sh crzk 5e-3 >_crzk_5e-3.txt

./tools/run_approx_algo1_count.sh givens 8 1e-2 && ./format_results.sh givens 1e-2 >_givens_1e-2.txt
./tools/run_approx_algo1_count.sh givens 8 3e-3 && ./format_results.sh givens 3e-3 >_givens_3e-3.txt
./tools/run_approx_algo1_count.sh givens 8 5e-3 && ./format_results.sh givens 5e-3 >_givens_5e-3.txt

./tools/qft 2 | ./tools/approx_algo1_count.sh 8 1e-16 | tee qft2_1e-16.txt
./tools/qft 2 | ./tools/approx_algo1_count.sh 8 1e-17 | tee qft2_1e-17.txt
./tools/qft 2 | ./tools/approx_algo1_count.sh 8 1e-18 | tee qft2_1e-18.txt
./tools/qft 2 | ./tools/approx_algo1_count.sh 8 1e-19 | tee qft2_1e-19.txt

./tools/qft 3 | ./tools/approx_algo1_count.sh 8 1e-2 | tee qft3_1e-2.txt
./tools/qft 3 | ./tools/approx_algo1_count.sh 8 1e-3 | tee qft3_1e-3.txt
./tools/qft 3 | ./tools/approx_algo1_count.sh 8 1e-4 | tee qft3_1e-4.txt
