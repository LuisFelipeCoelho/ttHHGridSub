#!/bin/bash

# Define the base directory
base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_GN2_77_015/"

# Define the destination directory for merged files
destination_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_GN2_77_015_merged/"

# List of main folders
#folders=("3top" "singleTop" "tt1Z" "tt4b_bzd5_semilep" "ttH125" "ttHH_dilep" "ttHH_semilep" "ttWH" "ttWZ" "Vjets" "data" "tt1W" "tt4b_bzd5_dilep" "ttbar_hdamp258p75_allhad" "ttbar_hdamp258p75_nonallhad" "ttHH_allhad" "ttHH_orth4b_SSML" "tttt" "ttWW" "ttZZ")
folders=("Vjets")

for folder in "${folders[@]}"; do
    echo "Processing files in folder: $folder"

    # List internal folders
    internal_folders=$(find "${base_dir}${folder}" -type d)

    # Iterate through each internal folder
    for internal_folder in $internal_folders; do
        # Skip if it's the main folder itself
        if [ "$internal_folder" != "${base_dir}${folder}" ]; then
            echo "Merging files in internal folder: $internal_folder"
            # Check if folder is not empty
            if [ "$(ls -A "${internal_folder}")" ]; then
                # Extract folder name from the path
                folder_name=$(basename "$internal_folder")
		mkdir -p "${destination_dir}${folder}"
                # Perform merging operation using hadd and save the merged file in the destination directory
                hadd -f "${destination_dir}${folder}/${folder_name}_merged.root" "${internal_folder}"/*.root
            else
                echo "Folder is empty: $internal_folder"
            fi
        fi
    done
done
