#!/bin/bash

# Define the base directory
base_dir="/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/NTUPLES_051_GN2v01/"

# Define the user and file information
user="lfaldaul"
campaignData="051_sys_GN2v01.2024_09_04_T105747"
campaignBroken="051_sys_GN2v01.2024_09_10_T164753"

# === data ===
rucio download --dir "$base_dir/run2/data" "user.$user.$campaignBroken.data15_13TeV.periodAllYear.grp15_v01_p6255_TREE/"
rucio download --dir "$base_dir/run2/data" "user.$user.$campaignBroken.data16_13TeV.periodAllYear.grp16_v01_p6266_TREE/"
rucio download --dir "$base_dir/run2/data" "user.$user.$campaignData.data17_13TeV.periodAllYear.grp17_v01_p6266_TREE/"
rucio download --dir "$base_dir/run2/data" "user.$user.$campaignData.data18_13TeV.periodAllYear.grp18_v01_p6266_TREE/"
rucio download --dir "$base_dir/run3/data" "user.$user.$campaignData.data22_13p6TeV.periodAllYear.grp22_v01_p6029_TREE/"
rucio download --dir "$base_dir/run3/data" "user.$user.$campaignData.data23_13p6TeV.periodAllYear.grp23_v01_p6029_TREE/"