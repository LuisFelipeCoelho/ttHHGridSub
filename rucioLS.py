import re

def extract_filenames(input_file):
    filenames = []
    with open(input_file, 'r') as f:
        lines = f.readlines()
        space=False
        for line in lines:
            match = re.search(r"mc23_13p6TeV:\S+", line)
            if match:
                filenames.append(match.group(0))
                space=True
            elif space: 
                filenames.append("\n")
                space=False
    return filenames

if __name__ == "__main__":
    input_file = "rucioLS.log"  # Replace with your input file
    filenames = extract_filenames(input_file)
    for filename in filenames:
        print(filename.replace("mc23_13p6TeV:", ""))
