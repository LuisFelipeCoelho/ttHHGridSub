#!/bin/bash

# Define the base directory
base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_013_GN2_77/"

# List of main folders
#folders=("data" "ttbar_hdamp258p75_allhad")
folders=("data" "ttbar_hdamp258p75_allhad" "3top" "tt1W" "ttH125" "ttH_mc23" "ttHH" "ttHH_mc23" "ttVV_mc23" "ttWW" "ttZZ" "ttbar_hdamp258p75_allhad" "ttbar_mc23" "ttbar_hdamp258p75_dilep" "ttbar_hdamp258p75_nonallhad" "tttt" "Vjets" "singleTop" "tt1Z" "ttWH" "ttWZ")


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
            hadd -f "${internal_folder}/${folder_name}_merged.root" "${internal_folder}"/*.root
        fi
    done
done

