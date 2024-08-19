import ROOT
import os

def delete_empty_merged_root_files(directory):
    for root, dirs, files in os.walk(directory):
        for file_name in files:
            #if "_merged" in file_name and file_name.endswith('.root'):
            if file_name.endswith('.root'):
                file_path = os.path.join(root, file_name)
                root_file = ROOT.TFile.Open(file_path)

                if not root_file or root_file.IsZombie():
                    print(f"Error opening ROOT file: {file_path}")
                    continue

                tree = root_file.Get("AnalysisMiniTree")  # Change "your_tree_name" to the name of your tree

                if not tree:
                    print(f"No tree found in ROOT file: {file_path}")
                    root_file.Close()
                    continue

                num_entries = tree.GetEntries()

                if num_entries == 0:
                    print(f"Deleting ROOT file with zero entries: {file_path}")
                    root_file.Close()
                    #os.remove(file_path)

# Replace 'directory_path' with the path to your folder containing subfolders with ROOT files
#directory_path = '/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/NTUPLES_042_GN2v00/'
directory_path = '/eos/home-l/lfaldaul/ttHH_analysis_5Jul_042_GN2v01/ntuples_forAnalysis/1L/'
delete_empty_merged_root_files(directory_path)

