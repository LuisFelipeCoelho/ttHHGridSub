#!/bin/bash

# Define the function to run rucio ls for a given range of IDs and prefix
run_rucio_ls() {
    prefix=$1
    start=$2
    end=$3
    string=$4
    for ((id=start; id<=end; id++)); do
	echo $prefix.$id.$string >> rucioLS_nominal_run2.log
        rucio ls $prefix.$id.$string --filter type=CONTAINER >> rucioLS_nominal_run2.log 2>&1
    done
}

# Call the function for each range of IDs and specify the prefix
# ttHH
run_rucio_ls "mc20_13TeV" 523072 523074 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 525963 525963 "*PHYS.*_p6490"

# ttbar
run_rucio_ls "mc20_13TeV" 410470 410470 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 410472 410472 "*PHYS.*_p6490"

# ttbb
run_rucio_ls "mc20_13TeV" 603190 603190 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 603192 603192 "*PHYS.*_p6490"

# 4tops
run_rucio_ls "mc20_13TeV" 412043 412043 "*PHYS.*_p6490"

# 3top
run_rucio_ls "mc20_13TeV" 516978 516978 "*PHYS.*_p6490"

# ttW
run_rucio_ls "mc20_13TeV" 700168 700168 "*PHYS.*_p6490"

# ttZ
run_rucio_ls "mc20_13TeV" 504330 504330 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 504334 504334 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 504342 504342 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 504346 504346 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 504338 504338 "*PHYS.*_p6490"

# ttH
run_rucio_ls "mc20_13TeV" 346344 346345 "*PHYS.*_p6490"

# SingleTop
run_rucio_ls "mc20_13TeV" 410658 410659 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 410644 410645 "*PHYS.*_p6490"

# tW
run_rucio_ls "mc20_13TeV" 410646 410647 "*PHYS.*_p6490"

# tWZ and tZ
run_rucio_ls "mc20_13TeV" 410408 410408 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 410560 410560 "*PHYS.*_p6490"

# ttVV
run_rucio_ls "mc20_13TeV" 410081 410081 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 500461 500463 "*PHYS.*_p6490"

# VJets
run_rucio_ls "mc20_13TeV" 700320 700325 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 700792 700792 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 700794 700794 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 700335 700349 "*PHYS.*_p6490"

# VH
run_rucio_ls "mc20_13TeV" 346310 346312 "*PHYS.*_p6490"

# VV jets
run_rucio_ls "mc20_13TeV" 700587 700594 "*PHYS.*_p6490"
run_rucio_ls "mc20_13TeV" 700600 700605 "*PHYS.*_p6490"

# VVV
run_rucio_ls "mc20_13TeV" 364242 364249 "*PHYS.*_p6490"
