import re

def parse_log_file(file_path):
    file_names = []

    # Adjusted regex pattern to match different prefixes like mc20_13TeV and mc23_13p6TeV
    pattern = re.compile(r'\| (mc\d{2}_13(?:p6)?TeV:[^\s]+)')

    space = False
    with open(file_path, 'r') as file:
        for line in file:
            match = pattern.search(line)
            if match:
                if len(match.group(1).strip().split(".")[5].split("_")) == 5: continue
                #for i in ["r13167", "r13144", "r13145", "r14622", "r14624", "r14859", "r14860", "r14861", "r14932"]:
                    #if i in match.group(1).strip().split(".")[5]: 
                space = False
                file_names.append(match.group(1))
            elif space == False:
                space = True
                file_names.append("\n")

    return file_names

# Path to the log file
file_path = 'AODrucioLS2.log'
file_names = parse_log_file(file_path)

# Print the extracted file names
for name in file_names:
    print(name)

