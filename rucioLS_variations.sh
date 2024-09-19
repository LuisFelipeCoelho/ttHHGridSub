#!/bin/bash

# Define the function to run rucio ls for a given range of IDs and prefix
run_rucio_ls() {
    prefix=$1
    start=$2
    end=$3
    string=$4
    for ((id=start; id<=end; id++)); do
	echo $prefix.$id.$string >> rucioLS_variations.log
        rucio ls $prefix.$id.$string --filter type=CONTAINER >> rucioLS_variations.log 2>&1
    done
}

# Call the function for each range of IDs and specify the prefix

# ttbb variations
run_rucio_ls "mc20_13TeV" 603193 603193 "*PHYSLITE.*_p6266"
run_rucio_ls "mc20_13TeV" 603191 603191 "*PHYSLITE.*_p6266"
run_rucio_ls "mc20_13TeV" 603906 603906 "*PHYSLITE.*_p6266"
run_rucio_ls "mc20_13TeV" 603905 603905 "*PHYSLITE.*_p6266"

# ttbar variations
run_rucio_ls "mc20_13TeV" 411233 411234 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 601491 601491 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 601497 601497 "*PHYSLITE*_p6266" 

# ttH variations
run_rucio_ls "mc20_13TeV" 602485 602486 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 345940 345941 "*PHYSLITE*_p6266"

# tW variations
# run_rucio_ls "mc20_13TeV" 411036 411037 "*PHYSLITE*_p6266"
# run_rucio_ls "mc20_13TeV" 412002 412002 "*PHYSLITE*_p6266"
# run_rucio_ls "mc20_13TeV" 410654 410655 "*PHYSLITE*_p6266"
# run_rucio_ls "mc20_13TeV" 601460 601460 "*PHYSLITE*_p6266"
# run_rucio_ls "mc20_13TeV" 601462 601462 "*PHYSLITE*_p6266"

## run 3

# ttbar variations
run_rucio_ls "mc23_13p6TeV" 601491 601491 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 601497 601497 "*PHYSLITE*_p6266"

# tW variations
# run_rucio_ls "mc23_13p6TeV" 601631 601631 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 601627 601627 "*PHYSLITE*_p6266"
