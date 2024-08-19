import ROOT
import os

def check_missing_branch_in_root_files(directory):
    missing_branch_files = []
    for root, dirs, files in os.walk(directory):
        print(root)
        for file_name in files:
            print(file_name)
            if file_name.endswith('.root'):
                file_path = os.path.join(root, file_name)
                root_file = ROOT.TFile.Open(file_path)

                if not root_file or root_file.IsZombie():
                    print(f"Error opening ROOT file: {file_path}")
                    continue

                tree = root_file.Get("AnalysisMiniTree")  # Ensure this is your tree name

                if not tree:
                    print(f"No tree found in ROOT file: {file_path}")
                    root_file.Close()
                    continue

                num_entries = tree.GetEntries()

                if num_entries == 0:
                    print(f"ROOT file with zero entries (not checked): {file_path}")
                    root_file.Close()
                    continue

                branch = tree.GetBranch("recojet_antikt4PFlow_GN2v01_pb_NOSYS")
                if not branch:
                    print(f"Branch 'recojet_antikt4PFlow_GN2v01_pb_NOSYS' missing in file: {file_path}")
                    missing_branch_files.append(file_path)

                root_file.Close()
    
    if missing_branch_files:
        print("Files missing the required branch:")
        for file in missing_branch_files:
            print(file)
    else:
        print("All checked files contain the required branch.")

# Replace 'directory_path' with the path to your folder containing subfolders with ROOT files
directory_path = '/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/Run3/yybb/ntuples_v5/run2/'
check_missing_branch_in_root_files(directory_path)

