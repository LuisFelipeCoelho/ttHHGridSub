#!/bin/bash
# e8557_s4159_r15204_p6026

# Define the function to run rucio ls for a given range of IDs and prefix
run_rucio_ls() {
    prefix=$1
    start=$2
    end=$3
    string=$4
    for ((id=start; id<=end; id++)); do
        rucio ls $prefix.$id.$string  >> rucioLS.log 2>&1
    done
}

# Call the function for each range of IDs and specify the prefix
# ttHH
run_rucio_ls "mc20_13TeV" 523072 523074 "*PHYSLITE.e8531_a907_r148*_p5855"
run_rucio_ls "mc23_13p6TeV" 523072 523074 "*PHYSLITE*"
run_rucio_ls "mc20_13TeV" 525963 525963 "*PHYSLITE.e8531_a907_r148*_p5855"
run_rucio_ls "mc23_13p6TeV" 525963 525963 "*PHYSLITE*"

# ttbar
run_rucio_ls "mc20_13TeV" 410470 410470 "*PHYSLITE.e6337_s3681_r131*_p6026  | grep -v \"_r13146\" "
run_rucio_ls "mc20_13TeV" 410472 410472 "*PHYSLITE.e6348_s3681_r131*_p6026"
run_rucio_ls "mc23_13p6TeV" 601229 601230 "*PHYSLITE*58_s*_p6026"

# ttbb
run_rucio_ls "mc20_13TeV" 603190 603190 "*PHYS*.e8555_s3797_r131*_p6026"
run_rucio_ls "mc20_13TeV" 603192 603192 "*PHYS*.e8555_s3797_r131*_p6026"

run_rucio_ls "mc23_13p6TeV" 603190 603190 "*PHYS*"
run_rucio_ls "mc23_13p6TeV" 603192 603192 "*PHYS*"

# ttbar variations
run_rucio_ls "mc20_13TeV" 411233 411234 "*PHYSLITE.e7580_a907_r148*_p5855"
run_rucio_ls "mc20_13TeV" 601491 601491 "*PHYS.e8441_a907_r148*_p5855"
run_rucio_ls "mc20_13TeV" 601497 601497 "*PHYS.e8435_a907_r148*_p5855" 
run_rucio_ls "mc20_13TeV" 410472 410472 "*PHYS.e6348_a907_r148*_p6026"
run_rucio_ls "mc20_13TeV" 410470 410470 "*PHYSLITE.e6337_a907_r148*_p5855"
run_rucio_ls "mc20_13TeV" 410482 410482 "*PHYSLITE.e6454_a907_r148*_p6026"
run_rucio_ls "mc20_13TeV" 410480 410480 "*PHYSLITE.e6454_a907_r148*_p6026"
run_rucio_ls "mc23_13p6TeV" 601491 601491 "*PHYSLITE*58_s*_p6026"
run_rucio_ls "mc23_13p6TeV" 601497 601497 "*PHYSLITE*58_s*_p6026"

# ttH
# run_rucio_ls "mc20_13TeV" 346344 346345 "*PHYSLITE.e7148_s3681_r131*_p6026"
# run_rucio_ls "mc23_13p6TeV" 602637 602638 "*PHYSLITE*58_s*_p6026"
# 
# # tW
# run_rucio_ls "mc20_13TeV" 410646 410647 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 601355 601355 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 601352 601352 "*PHYSLITE*58_s*_p6026"
# 
# # SingleTop
# run_rucio_ls "mc20_13TeV" 410658 410659 "*PHYSLITE.e6671_s3681_r131*_p6026"
# run_rucio_ls "mc20_13TeV" 410644 410645 "*PHYSLITE.e6527_s3681_r131*_p6026"
# run_rucio_ls "mc23_13p6TeV" 601348 601349 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 601350 601351 "*PHYSLITE*58_s*_p6026"
# 
# # tWZ and tZ
# run_rucio_ls "mc20_13TeV" 410408 410408 "*PHYSLITE.e6423_s3681_r131*_p6026"
# run_rucio_ls "mc23_13p6TeV" 525955 525955 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc20_13TeV" 410560 410560 "*PHYSLITE.e5803_s3681_r131*_p6026"
# #run_rucio_ls "mc23_13p6TeV" ??
# 
# # 4tops
# run_rucio_ls "mc20_13TeV" 412043 412043 "*PHYSLITE.e7101_a907_r148*_p6026"
# run_rucio_ls "mc23_13p6TeV" 510203 510203 "*PHYSLITE*58_s*_p6026"
# 
# # ttW
# run_rucio_ls "mc20_13TeV" 700168 700168 "*PHYSLITE.e8273_s3797_r131*_p6026"
# run_rucio_ls "mc23_13p6TeV" 700996 700997 "*PHYSLITE*58_s*_p6026"
# 
# # ttZ
# run_rucio_ls "mc20_13TeV" 504330 504330 "*PHYSLITE.e8255_s3797_r131*_p6026"
# run_rucio_ls "mc20_13TeV" 504334 504334 "*PHYSLITE.e8255_s3797_r131*_p6026"
# run_rucio_ls "mc20_13TeV" 504342 504342 "*PHYSLITE.e8255_s3797_r131*_p6026"
# run_rucio_ls "mc20_13TeV" 504346 504346 "*PHYSLITE.e8255_s3797_r131*_p6026"
# run_rucio_ls "mc20_13TeV" 504338 504338 "*PHYSLITE.e8255_s3797_r131*_p6026"
# 
# run_rucio_ls "mc23_13p6TeV" 522024 522024 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 522028 522028 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 522036 522036 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 522032 522032 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 522040 522040 "*PHYSLITE*58_s*_p6026"
# 
# # ttVV
# run_rucio_ls "mc20_13TeV" 410081 410081 "*PHYSLITE.e4111_s3681_r131*_p6026"
# run_rucio_ls "mc20_13TeV" 500461 500463 "*PHYSLITE*58_s*_p6026"
# 
# run_rucio_ls "mc23_13p6TeV" 525357 525358 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 525360 525361 "*PHYSLITE*58_s*_p6026"
# 
# # 3top
# run_rucio_ls "mc20_13TeV" 516978 516978 "*PHYSLITE.e8461_s3797_r131*_p6026"
# run_rucio_ls "mc23_13p6TeV" 525662 525663 "*PHYSLITE*58_s*_p6026"
# 
# # VH
# run_rucio_ls "mc20_13TeV" 346645 346647 "*PHYSLITE.e7735_s3681_r131*_p6026"
# run_rucio_ls "mc23_13p6TeV" 601501 601503 "*PHYSLITE*58_s*_p6026"
# 
# # VVV
# run_rucio_ls "mc20_13TeV" 364242 364249 "*PHYSLITE.e5887_s3681_r131*_p6026"
# 
# run_rucio_ls "mc23_13p6TeV" 700864 700868 "*PHYSLITE*58_s*_p6026"
# run_rucio_ls "mc23_13p6TeV" 700584 700584 "*PHYSLITE*58_s*_p6026"

# VJets
#run_rucio_ls "mc20_13TeV" 700320 700349 "*PHYSLITE.e8351_s3681_r131*_p6026"
#run_rucio_ls "mc23_13p6TeV" 700777 700797 "*PHYSLITE*58_s*_p6026"

# VV
#run_rucio_ls "mc20_13TeV" 701040 701129 "*PHYSLITE*58_s*_p6026"
#run_rucio_ls "mc23_13p6TeV" 701040 701129 "*PHYSLITE*58_s*_p6026"

# VV jets ??
