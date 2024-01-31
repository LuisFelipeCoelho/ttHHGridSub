#!/bin/bash

# Define the base directory
#base_dir="/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/NTUPLES"
base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES"

# Define the user and file information
user="lfaldaul"
campaign="005"

# === data ===

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp15_v01_p5631_TREE/"

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp16_v01_p5631_TREE/"

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp17_v01_p5631_TREE/"

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp18_v01_p5631_TREE/"

# === ttHH all had ===

# MC20a - r14859
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523074.MGPy8EG_A14NNPDF23LO_ttHH_fullhad.e8531_a907_r14859_p5855_TREE"

# MC20d - r14860
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523074.MGPy8EG_A14NNPDF23LO_ttHH_fullhad.e8531_a907_r14860_p5855_TREE"

# MC20e - r14861
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523074.MGPy8EG_A14NNPDF23LO_ttHH_fullhad.e8531_a907_r14861_p5855_TREE"

# === ttHH semi lep ===

# MC20a - r14859
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523072.MGPy8EG_A14NNPDF23LO_ttHH_semilep.e8531_a907_r14859_p5855_TREE"

# MC20d - r14860
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523072.MGPy8EG_A14NNPDF23LO_ttHH_semilep.e8531_a907_r14860_p5855_TREE"

# MC20e - r14861
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523072.MGPy8EG_A14NNPDF23LO_ttHH_semilep.e8531_a907_r14861_p5855_TREE"

# === ttHH di lep ===

# MC20a - r14859
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523073.MGPy8EG_A14NNPDF23LO_ttHH_dilep.e8531_a907_r14859_p5855_TREE"

# MC20d - r14860
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523073.MGPy8EG_A14NNPDF23LO_ttHH_dilep.e8531_a907_r14860_p5855_TREE"

# MC20e - r14861
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.523073.MGPy8EG_A14NNPDF23LO_ttHH_dilep.e8531_a907_r14861_p5855_TREE"

# === ttbar no all had ===

# MC20a - r13167
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410470.PhPy8EG_A14_ttbar_hdamp258p75_nonallhad.e6337_s3681_r13167_p5855_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410470.PhPy8EG_A14_ttbar_hdamp258p75_nonallhad.e6337_s3681_r13144_p5855_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410470.PhPy8EG_A14_ttbar_hdamp258p75_nonallhad.e6337_s3681_r13145_p5855_TREE"

# MC23 - WIP

# === ttbar all had ===

# MC20a - r13167
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410471.PhPy8EG_A14_ttbar_hdamp258p75_allhad.e6337_s3681_r13167_p5631_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410471.PhPy8EG_A14_ttbar_hdamp258p75_allhad.e6337_s3681_r13144_p5631_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410471.PhPy8EG_A14_ttbar_hdamp258p75_allhad.e6337_s3681_r13145_p5631_TREE"

# === ttH all had ===

# MC20a - r13167
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346343.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_allhad.e7148_s3681_r13144_p5631_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346343.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_allhad.e7148_s3681_r13145_p5631_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346343.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_allhad.e7148_s3681_r13167_p5631_TREE"

# === ttH single lep ===

# MC20a - r13167
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346344.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_semilep.e7148_s3681_r13144_p5631_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346344.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_semilep.e7148_s3681_r13145_p5631_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346344.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_semilep.e7148_s3681_r13167_p5631_TREE"

# === ttH dilep ===

# MC20a - r13167
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346345.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_dilep.e7148_s3681_r13144_p5631_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346345.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_dilep.e7148_s3681_r13145_p5631_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346345.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_dilep.e7148_s3681_r13167_p5631_TREE"

# === ttZqq ===

# MC20a - r13167
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.410157.aMcAtNloPythia8EvtGen_MEN30NLO_A14N23LO_ttZqq.e5070_s3681_r13167_p5631_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.410157.aMcAtNloPythia8EvtGen_MEN30NLO_A14N23LO_ttZqq.e5070_s3681_r13144_p5631_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.410157.aMcAtNloPythia8EvtGen_MEN30NLO_A14N23LO_ttZqq.e5070_s3681_r13145_p5631_TREE"

# === ttZZ ===

# MC20a - r14859
rucio download --dir "$base_dir/ttZZ" "user.$user.$campaign.500462.MGPy8EG_A14NNPDF23LO_ttZZ.e8041_a907_r14859_p5855_TREE"

# MC20d - r14860
rucio download --dir "$base_dir/ttZZ" "user.$user.$campaign.500462.MGPy8EG_A14NNPDF23LO_ttZZ.e8041_a907_r14860_p5855_TREE"

# MC20e - r14861
rucio download --dir "$base_dir/ttZZ" "user.$user.$campaign.500462.MGPy8EG_A14NNPDF23LO_ttZZ.e8041_a907_r14861_p5855_TREE"

# === tttt ===

# MC20a - r13167
rucio download --dir "$base_dir/tttt" "user.$user.$campaign.700355.Sh_2211_tttt_muQHT2.e8351_s3797_r13144_p5855_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/tttt" "user.$user.$campaign.700355.Sh_2211_tttt_muQHT2.e8351_s3797_r13145_p5855_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/tttt" "user.$user.$campaign.700355.Sh_2211_tttt_muQHT2.e8351_s3797_r13167_p5855_TREE"
