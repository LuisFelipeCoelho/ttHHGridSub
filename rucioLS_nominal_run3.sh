#!/bin/bash

# Define the function to run rucio ls for a given range of IDs and prefix
run_rucio_ls() {
    prefix=$1
    start=$2
    end=$3
    string=$4
    for ((id=start; id<=end; id++)); do
	echo $prefix.$id.$string >> rucioLS_nominal_run3.log
        rucio ls $prefix.$id.$string --filter type=CONTAINER >> rucioLS_nominal_run3.log 2>&1
    done
}

# Call the function for each range of IDs and specify the prefix
## run 3

# ttHH
run_rucio_ls "mc23_13p6TeV" 523072 523074 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 525963 525963 "*PHYSLITE*_p6266"

# ttbar
run_rucio_ls "mc23_13p6TeV" 601229 601230 "*PHYSLITE*_p6266"

# ttH
run_rucio_ls "mc23_13p6TeV" 602635 602638 "*PHYS.*_p6266"

# ttW 
run_rucio_ls "mc23_13p6TeV" 601352 601352 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 601355 601355 "*PHYSLITE*_p6266" 

# singTop
run_rucio_ls "mc23_13p6TeV" 601348 601351 "*PHYSLITE*_p6266"

# tWZ
run_rucio_ls "mc23_13p6TeV" 525955 525955 "*PHYSLITE*_p6056"

# 4top
run_rucio_ls "mc23_13p6TeV" 510203 510203 "*PHYSLITE*_p6266"

# ttW
run_rucio_ls "mc23_13p6TeV" 700996 700997 "*PHYSLITE*_p6266"

# ttZ
run_rucio_ls "mc23_13p6TeV" 522024 522024 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 522028 522028 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 522036 522036 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 522032 522032 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 522040 522040 "*PHYSLITE*_p6266"

# ttVV
run_rucio_ls "mc23_13p6TeV" 525357 525358 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 525360 525361 "*PHYSLITE*_p6266"

# ttt
run_rucio_ls "mc23_13p6TeV" 525662 525663 "*PHYSLITE*_p6266"

# VH
run_rucio_ls "mc23_13p6TeV" 601501 601503 "*PHYSLITE*_p6266"

# VVV
run_rucio_ls "mc23_13p6TeV" 700864 700868 "*PHYSLITE*_p6266"
run_rucio_ls "mc23_13p6TeV" 700584 700584 "*PHYSLITE*_p6266"

# Vjets
run_rucio_ls "mc23_13p6TeV" 700777 700797 "*PHYSLITE*_p6266"

# VV
# run_rucio_ls "mc23_13p6TeV" 701000 701000 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701005 701005 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701010 701010 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701015 701015 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701020 701020 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701025 701025 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701030 701030 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701035 701035 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701040 701040 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701045 701045 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701050 701050 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701055 701055 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701060 701060 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701065 701065 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701085 701085 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701090 701090 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701095 701095 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701100 701100 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701105 701105 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701110 701110 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701115 701115 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701120 701120 "*PHYSLITE*_p6266"
# run_rucio_ls "mc23_13p6TeV" 701125 701125 "*PHYSLITE*_p6266"
