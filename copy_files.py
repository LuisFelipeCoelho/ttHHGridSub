import os
import shutil

def copy_and_rename_files(source_dir, destination_dir):
    # Iterate over all items in the source directory
    for item in os.listdir(source_dir):
        # Form full paths
        source_item = os.path.join(source_dir, item)
        destination_item = os.path.join(destination_dir, item)

        # If the item is a directory, recursively copy its contents
        if os.path.isdir(source_item):
            os.makedirs(destination_item, exist_ok=True)
            copy_and_rename_files(source_item, destination_item)
        else:
            # If the item is a file and ends with _TREE_merged.root or _TREE_merged_SumOfWeights.root, copy it
            if (item.endswith('_TREE_merged.root') or item.endswith('_TREE_merged_SumOfWeights.root')) and "010_GN2_77" in item:
                # Rename the file to replace "010_GN2_77" with "010_GN2_85"
                new_item = item.replace("010_GN2_77", "010_GN2_85")
                destination_item = os.path.join(destination_dir, new_item)
                shutil.copy2(source_item, destination_item)
            elif item.endswith('_TREE_merged.root') or item.endswith('_TREE_merged_SumOfWeights.root'):
                shutil.copy2(source_item, destination_dir)

if __name__ == "__main__":
    source_directory = "/eos/home-l/lfaldaul/ttHH/NTUPLES_010_GN2_77/"
    destination_directory = "/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/NTUPLES/"

    # Make sure the source directory exists
    if not os.path.exists(source_directory):
        print("Source directory does not exist.")
        exit()

    # Create the destination directory if it does not exist
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)

    # Call the function to copy and rename files
    copy_and_rename_files(source_directory, destination_directory)

    print("Files copied and renamed successfully.")

