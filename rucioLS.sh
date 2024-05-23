#!/bin/bash
# e8557_s4159_r15224_p6026

string="*PHYSLITE.*"

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
#run_rucio_ls "mc23_13p6TeV" 701070 701085
run_rucio_ls "mc20_13TeV" 701040 701129
