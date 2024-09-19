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
run_rucio_ls "mc20_13TeV" 523072 523074 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 525963 525963 "*PHYSLITE*_p6266"

# ttbar
run_rucio_ls "mc20_13TeV" 410470 410470 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 410472 410472 "*PHYSLITE*_p6266"

# ttbb
run_rucio_ls "mc20_13TeV" 603190 603190 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 603192 603192 "*PHYSLITE*_p6266"

# ttH
run_rucio_ls "mc20_13TeV" 346344 346345 "*PHYSLITE*_p6266"

# tW
run_rucio_ls "mc20_13TeV" 410646 410647 "*PHYS.*_p6266"

# SingleTop
run_rucio_ls "mc20_13TeV" 410658 410659 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 410644 410645 "*PHYSLITE*_p6266"

# tWZ and tZ
run_rucio_ls "mc20_13TeV" 410408 410408 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 410560 410560 "*PHYS.*_p6266"

# 4tops
run_rucio_ls "mc20_13TeV" 412043 412043 "*PHYS.*_p6266"

# ttW
run_rucio_ls "mc20_13TeV" 700168 700168 "*PHYSLITE*_p6266"

# ttZ
run_rucio_ls "mc20_13TeV" 504330 504330 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 504334 504334 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 504342 504342 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 504346 504346 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 504338 504338 "*PHYSLITE*_p6266"

# ttVV
run_rucio_ls "mc20_13TeV" 410081 410081 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 500461 500463 "*PHYS.*_p6266"

# 3top
run_rucio_ls "mc20_13TeV" 516978 516978 "*PHYS.*_p6266"

# VH
run_rucio_ls "mc20_13TeV" 346645 346646 "*PHYS.*_p6266"
run_rucio_ls "mc20_13TeV" 346647 346647 "*PHYSLITE.*_p6266"

# VVV
run_rucio_ls "mc20_13TeV" 364242 364249 "*PHYSLITE*_p6266"

# VJets
run_rucio_ls "mc20_13TeV" 700320 700349 "*PHYSLITE*_p6266"

# VV jets
run_rucio_ls "mc20_13TeV" 701000 701000 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701005 701005 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701010 701010 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701015 701015 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701020 701020 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701025 701025 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701030 701030 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701035 701035 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701040 701040 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701045 701045 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701050 701050 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701055 701055 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701060 701060 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701065 701065 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701085 701085 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701090 701090 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701095 701095 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701100 701100 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701105 701105 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701110 701110 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701115 701115 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701120 701120 "*PHYSLITE*_p6266"
run_rucio_ls "mc20_13TeV" 701125 701125 "*PHYSLITE*_p6266"
