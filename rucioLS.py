import re
import csv

data = {
    "ttHH": [523072, 523073, 523074, 525963],
    "ttH": [346345, 346344, 346343] + [602637, 602638] + [602485, 602486, 602635, 602636],
    "ttbb": [603190, 603191, 603192, 603193, 603906, 603905],
    "ttbar": [410472, 410470] + [601229, 601230] + [411234, 411233, 601491, 601497], #601669, 601671, 601670, 601672, 410482, 410480] + [601491, 601497] + [700124, 700122, 700123],
    "tW": [410646, 410647] + [601355, 601352] + [411036, 411037, 412002, 410654, 410655, 601631, 601627],
    "SingleTop": [410658, 410659, 410644, 410645] + [601348, 601349, 601350, 601351] + [346676, 346414, 346230] + [508776, 346511] + [410560] + [410408, 525955],
    "4tops": [412043] + [510203],
    "ttV": [700168] + [700996, 700997] + [410155] + [504330, 504334, 504342, 504346, 504338] + [522024, 522028, 522036, 522032, 522040] + [504329, 504333, 504341, 504337, 504330, 504334, 504342], #+ [410276, 410277, 410278],
    "Vjets": list(range(700320, 700350)) + list(range(700777, 700798)) + list(range(700467, 700473)) + list(range(700901, 700904)),
    "VV": list(range(701000, 701130)),
    "ttVV": [410081, 500463, 500461, 500462] + [525357, 525358, 525360, 525361],
    "3tops": [516978] + [525662, 525663],
    "VH": [346645, 346646, 346647] + [601501, 601502, 601503],
    "VVV": list(range(364242, 364250)) + list(range(700864, 700869)) + [700584],
}


exclude_run2 = [
"ttbar_hdamp258p75_nonallhad.deriv.DAOD_PHYSLITE.e6337_a907_",
"ttHH_semilep.deriv.DAOD_PHYSLITE.e8531_s3797_",
"ttHH_dilep.deriv.DAOD_PHYSLITE.e8531_s3797_",
"ttHH_fullhad.deriv.DAOD_PHYSLITE.e8531_s3797_",
"tttautau.deriv.DAOD_PHYSLITE.e8255_a907",
"tttautau.deriv.DAOD_PHYSLITE.e8255_e7400_a907_r14861_p6266",
"tttautau.deriv.DAOD_PHYSLITE.e8255_s3797_",
"SM4topsNLO.deriv.DAOD_PHYS.e7101_s3681_",
"mc20_13TeV.410646.PowhegPythia8EvtGen_A14_Wt_DR_inclusive_top.deriv.DAOD_PHYS.e6552_a907_r14861_p6266",
"mc20_13TeV.410647.PowhegPythia8EvtGen_A14_Wt_DR_inclusive_antitop.deriv.DAOD_PHYS.e6552_a907_r14861_p6266",
"mc20_13TeV.410658.PhPy8EG_A14_tchan_BW50_lept_top.deriv.DAOD_PHYSLITE.e6671_a907_r14861_p6266",
"mc20_13TeV.410659.PhPy8EG_A14_tchan_BW50_lept_antitop.deriv.DAOD_PHYSLITE.e6671_a907_r14861_p6266",
"singletop_schan_lept_top.deriv.DAOD_PHYSLITE.e6527_a907_",
"singletop_schan_lept_antitop.deriv.DAOD_PHYSLITE.e6527_a907_",
]

exclude_run3 = [
"tW_dyn_DR_incl_antitop.deriv.DAOD_PHYSLITE.e8514_",
"tW_dyn_DR_incl_top.deriv.DAOD_PHYSLITE.e8514_",
]

exclude_variations = [
"mc20_13TeV.411233.PowhegHerwig7EvtGen_tt_hdamp258p75_713_SingleLep.deriv.DAOD_PHYSLITE.e7580_s3681_r13167_p6266",
"mc20_13TeV.411234.PowhegHerwig7EvtGen_tt_hdamp258p75_713_dil.deriv.DAOD_PHYSLITE.e7580_s3681_r13167_p6266",
]

def parse_file(input_file):
    data_list = []

    with open(input_file, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'):
                continue  # Skip empty lines and lines starting with '#'
            
            parts = line.split()
            if len(parts) >= 3:  # Ensure there are at least 3 fields
                record = {
                    'DSID': parts[0],
                    'XS': parts[1],
                    'BR': parts[2],
                    'generator': ' '.join(parts[3:])  # Join remaining parts as Field4
                }
                data_list.append(record)

    return data_list

def parse_pmg_xsec_db(file_path):
    # Define the headers
    headers = ["dataset_number", "I:physics_short", "C:crossSection_pb", "D:genFiltEff", "D:kFactor", "D:relUncertUP", "D:relUncertDOWN", "D:generator_name", "C:etag"]

    # Initialize a list to store the parsed data
    parsed_data = []

    # Read the file
    with open(file_path, 'r') as file:
        lines = file.readlines()

        firstLine = True
        # Process each line
        for line in lines:

            if firstLine:
                firstLine = False
                continue

            # Split the line by whitespace
            values = line.split()

            # Handle case where there are multiple spaces between values
            # Re-join values for each line to correctly split strings with spaces
            line = ' '.join(values)
            split_line = line.split(maxsplit=len(headers) - 1)

            # Create a dictionary for each row
            row = {headers[i]: split_line[i] for i in range(len(headers))}

            # Add the row to the parsed_data list
            parsed_data.append(row)

    return parsed_data

def extract_p_part(input_string):
    match = re.search(r'p\d+', input_string)
    if match:
        return match.group(0)
    else:
        return None

def classifyNames(dsid):
    for key, values in data.items():
        if int(dsid) in values:
            return key
    return None

def extract_filenames(input_file, output_csv, parsed_20, parsed_23, parsed_pmg_20, parsed_pmg_23, exclude):
    filenames = []
    split_parts = []  # List to store split parts for CSV
    download_string = []

    with open(input_file, 'r') as f:
        lines = f.readlines()
        space = False
        for line in lines:
            match = re.search(r"mc20_13TeV:\S+|mc23_13p6TeV:\S+", line)
            if match:
                filename = match.group(0)
                if filename.split('.')[-1].count('r') == 1:
                    if "r14799" in filename:
                        continue
                    excludeTag = False
                    for excludeFile in exclude:
                        if excludeFile in filename:
                            excludeTag = True
                    if excludeTag: 
                        continue

                    filenames.append(filename)
                    file_info = filename.split('.')
                    download_string.append("rucio download --dir \"$base_dir/"+classifyNames(file_info[1])+"\" \"user.$user.$campaignBroken2."+file_info[1]+"."+file_info[-1]+"_TREE/\"")
                    file_info[0] = file_info[0].replace("mc20_13TeV:", "").replace("mc23_13p6TeV:", "")
                    simType = 'FS'
                    if 'a' in file_info[-1]:
                        simType = 'AF3'
                    file_info[4] = file_info[4].replace("DAOD_", "")
                    file_info[-1] = extract_p_part(file_info[-1])
                    file_info = file_info[:3] + file_info[4:]
                    file_info.append(simType)
                    inSample = False
                    for sample in split_parts:
                        if sample[0]==file_info[0] and sample[1]==file_info[1]:
                            inSample = True
                    if not inSample:
                        if file_info[0] == "mc20_13TeV":
                            found = False
                            for sample in parsed_20:
                                if int(file_info[1]) == int(sample['DSID']):
                                    file_info.append(float(sample['XS'])*float(sample['BR']))
                                    file_info.append(sample['generator'])
                                    found = True
                                    break
                            if not found:
                                for sample in parsed_pmg_20:
                                    if int(file_info[1]) == int(sample['dataset_number']):
                                        file_info.append(float(sample['C:crossSection_pb'])*float(sample['D:genFiltEff'])*float(sample['D:kFactor']))
                                        file_info.append(sample['D:generator_name'])
                                        found = True
                                        break
                        if file_info[0] == "mc23_13p6TeV":
                            found = False
                            for sample in parsed_23:
                                if int(file_info[1]) == int(sample['DSID']):
                                    file_info.append(float(sample['XS'])*float(sample['BR']))
                                    file_info.append(sample['generator'])
                                    found = True
                                    break
                            if not found:
                                for sample in parsed_pmg_23:
                                    if int(file_info[1]) == int(sample['dataset_number']):
                                        file_info.append(float(sample['C:crossSection_pb'])*float(sample['D:genFiltEff'])*float(sample['D:kFactor']))
                                        file_info.append(sample['D:generator_name'])
                                        found = True
                                        break
                        split_parts.append(file_info)
                        print(file_info)
                space = True
            elif space:
                filenames.append("\n")
                space = False

    # Write split parts to CSV
    with open(output_csv, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Part1', 'Part2', 'Part3', 'Part4', 'Part5'])  # Adjust the header based on the number of parts
        for parts in split_parts:
            writer.writerow(parts)

    return filenames, download_string


def runCode(postfix, exclude):
    input_file = "rucioLS_"+postfix+".log"  # Replace with your input file
    output_csv = "out/sample_list_"+postfix+".csv"  # Output CSV file

    parsed_20 = parse_file("/afs/cern.ch/user/l/lfaldaul/work/ttHH_analysis/fastframes/fastframes/data/XSection-MC16-13TeV.data")
    parsed_23 = parse_file("/afs/cern.ch/user/l/lfaldaul/work/ttHH_analysis/fastframes/fastframes/data/XSection-MC21-13p6TeV.data")

    parsed_pmg_20 = parse_pmg_xsec_db("/cvmfs/atlas.cern.ch/repo/sw/database/GroupData/dev/PMGTools/2024-06-27/PMGxsecDB_mc16.txt")
    parsed_pmg_23 = parse_pmg_xsec_db("/cvmfs/atlas.cern.ch/repo/sw/database/GroupData/dev/PMGTools/2024-06-27/PMGxsecDB_mc23.txt")

    filenames, download_string = extract_filenames(input_file, output_csv, parsed_20, parsed_23, parsed_pmg_20, parsed_pmg_23, exclude)

    with open('out/sample_list_'+postfix+'.txt', 'w') as file:
        for filename in filenames:
            modified_filename = filename.replace("mc23_13p6TeV:", "").replace("mc20_13TeV:", "")
            file.write(modified_filename + '\n')

    with open('out/sample_list_download_strings_'+postfix+'.txt', 'w') as file:
        for s in download_string:
            print(s)
            file.write(s + '\n')


if __name__ == "__main__":
    
    #runCode("nominal_run2", exclude_run2)
    #runCode("nominal_run3", exclude_run3)
    runCode("variations", exclude_variations)
