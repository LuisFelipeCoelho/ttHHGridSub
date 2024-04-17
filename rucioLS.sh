#!/bin/bash

string="*PHYSLITE.e8514_s4159*_p5855"

# Define the function to run rucio ls for a given range of IDs and prefix
run_rucio_ls() {
    prefix=$1
    start=$2
    end=$3
    for ((id=start; id<=end; id++)); do
        rucio ls $prefix.$id.$string  >> rucioLS.log 2>&1
    done
}

# Call the function for each range of IDs and specify the prefix
run_rucio_ls "mc23_13p6TeV" 700777 700797


