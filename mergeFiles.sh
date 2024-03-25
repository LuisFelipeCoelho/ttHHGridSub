#!/bin/bash

# Define the base directory
#base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES/"
#base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_007_DL1/"
base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_011_GN2_77/"

# List of main folders
#folders=("data" "ttH" "ttHH" "ttZZ" "ttZ" "ttbar" "tttt" "vvvv" "ttWZ" "ttWH" "tt1W" "3top" "ttWW" "Vjets")
#folders=("ttH" "ttZZ" "ttZ" "ttbar" "tttt" "vvvv" "ttWZ" "ttWH" "ttt" "ttWW")
#folders=("tt1W" "Vjets" "3top")
folders=("ttHH")


# Iterate through each main folder
for folder in "${folders[@]}"; do
    echo "Processing files in folder: $folder"
    
    # List internal folders
    internal_folders=$(find "${base_dir}${folder}" -type d)

    # Iterate through each internal folder
    for internal_folder in $internal_folders; do
        # Skip if it's the main folder itself
        if [ "$internal_folder" != "${base_dir}${folder}" ]; then
            echo "Merging files in internal folder: $internal_folder"
            # Extract folder name from the path
            folder_name=$(basename "$internal_folder")
            # Perform merging operation using hadd
            hadd "${internal_folder}/${folder_name}_merged.root" "${internal_folder}"/*.root
        fi
    done
done

