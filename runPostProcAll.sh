#!/bin/bash

# Define the base directory
base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_013_GN2_77/"

# List of main folders
folders=("ttHH_allhad" "ttHH_semilep" "ttHH_dilep" "ttHH_orth4b_SSML")
#folders=("data" "ttbar_hdamp258p75_allhad" "3top" "tt1W" "ttH125" "ttH_mc23" "ttHH_allhad" "ttHH_semilep" "ttHH_dilep" "ttHH_orth4b_SSML" "ttHH_mc23" "ttVV_mc23" "ttWW" "ttZZ" "ttbar_hdamp258p75_allhad" "ttbar_mc23" "ttbar_hdamp258p75_dilep" "ttbar_hdamp258p75_nonallhad" "tttt" "Vjets" "singleTop" "tt1Z" "ttWH" "ttWZ")

# Function to run athena command
run_athena() {
    input_file="$1"
    echo "Running athena for file: $input_file"
    ../easyjet/ttHHAnalysis/scripts/ttHHPostProcess.py \
             --inFile "$input_file" \
             --xSectionsConfig ../easyjet/ttHHAnalysis/share/XSectionData.yaml \
             --outFile "${input_file/.root/}_SumOfWeights.root"
}

# Iterate through each main folder
for folder in "${folders[@]}"; do
    echo "Processing files in folder: $folder"
    
    # List internal folders
    internal_folders=$(find "${base_dir}${folder}" -type d)

    # Iterate through each internal folder
    for internal_folder in $internal_folders; do
        # Skip if it's the main folder itself
        if [ "$internal_folder" != "${base_dir}${folder}" ]; then
            # Extract folder name from the path
            folder_name=$(basename "$internal_folder")
            # Perform merging operation using hadd
            merged_file="${internal_folder}/${folder_name}_merged.root"
            # Run athena command on the merged file
            run_athena "$merged_file"
        fi
    done
done
