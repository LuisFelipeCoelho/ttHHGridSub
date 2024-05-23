#!/bin/bash

# Define the base directory
base_dir="/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/NTUPLES_GN2_77_015/"

# Define the user and file information
user="lfaldaul"
campaign="01_GN2_77.2024_05_07_T163334"
campaignData="01_GN2_77.2024_05_07_T162449" 

#base_dir="/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/FLAT_NTUPLES_015_GN2_85_sys"
#campaign="02_GN2_85.2024_05_07_T133640"
#campaignData="02_GN2_85.2024_05_07_T132836" 

# === data ===
rucio download --dir "$base_dir/data" "user.$user.$campaignData.data15_13TeV.periodAllYear.grp15_v01_p5855_TREE/"
rucio download --dir "$base_dir/data" "user.$user.$campaignData.data16_13TeV.periodAllYear.grp16_v01_p5855_TREE/"
rucio download --dir "$base_dir/data" "user.$user.$campaignData.data17_13TeV.periodAllYear.grp17_v01_p5855_TREE/"
rucio download --dir "$base_dir/data" "user.$user.$campaignData.data18_13TeV.periodAllYear.grp18_v01_p5855_TREE/"
#rucio download --dir "$base_dir/data" "user.$user.$campaignData.data22_13p6TeV.periodAllYear.grp22_v02_p5858_TREE/"

# === ttHH all had ===
rucio download --dir "$base_dir/ttHH_allhad" "user.$user.$campaign.523074.e8531_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_allhad" "user.$user.$campaign.523074.e8531_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_allhad" "user.$user.$campaign.523074.e8531_a907_r14861_p5855_TREE/"

# === ttHH semi lep ===
rucio download --dir "$base_dir/ttHH_semilep" "user.$user.$campaign.523072.e8531_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_semilep" "user.$user.$campaign.523072.e8531_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_semilep" "user.$user.$campaign.523072.e8531_a907_r14861_p5855_TREE/"

# === ttHH di lep ===
rucio download --dir "$base_dir/ttHH_dilep" "user.$user.$campaign.523073.e8531_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_dilep" "user.$user.$campaign.523073.e8531_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_dilep" "user.$user.$campaign.523073.e8531_a907_r14861_p5855_TREE/"

# === ttHH SSML ===
rucio download --dir "$base_dir/ttHH_orth4b_SSML" "user.$user.$campaign.525963.e8531_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_orth4b_SSML" "user.$user.$campaign.525963.e8531_a907_r14861_p5855_TREE/"
rucio download --dir "$base_dir/ttHH_orth4b_SSML" "user.$user.$campaign.525963.e8531_a907_r14859_p5855_TREE/"

# === ttbb 4FS_bzd5 dilep ===
rucio download --dir "$base_dir/tt4b_bzd5_dilep" "user.$user.$campaign.603190.e8555_s3797_r13144_p6026_TREE/"
rucio download --dir "$base_dir/tt4b_bzd5_dilep" "user.$user.$campaign.603190.e8555_s3797_r13145_p6026_TREE/"
rucio download --dir "$base_dir/tt4b_bzd5_dilep" "user.$user.$campaign.603190.e8555_s3797_r13167_p6026_TREE/"

# === ttbb 4FS_pTdef1_pThard1 dilep ===
#rucio download --dir "$base_dir/tt4b_pThard1_dilep" "user.$user.$campaign.603191.e8555_s3797_r13144_p6026_TREE/"
#rucio download --dir "$base_dir/tt4b_pThard1_dilep" "user.$user.$campaign.603191.e8555_s3797_r13145_p6026_TREE/"
#rucio download --dir "$base_dir/tt4b_pThard1_dilep" "user.$user.$campaign.603191.e8555_s3797_r13167_p6026_TREE/"

# === ttbb 4FS_bzd5 semilep ===
rucio download --dir "$base_dir/tt4b_bzd5_semilep" "user.$user.$campaign.603192.e8555_s3797_r13144_p6026_TREE/"
rucio download --dir "$base_dir/tt4b_bzd5_semilep" "user.$user.$campaign.603192.e8555_s3797_r13145_p6026_TREE/"
rucio download --dir "$base_dir/tt4b_bzd5_semilep" "user.$user.$campaign.603192.e8555_s3797_r13167_p6026_TREE/"

# === ttbb 4FS_pTdef1_pThard1 semilep ===
#rucio download --dir "$base_dir/tt4b_pThard1_semilep" "user.$user.$campaign.603193.e8555_s3797_r13144_p6026_TREE/"
#rucio download --dir "$base_dir/tt4b_pThard1_semilep" "user.$user.$campaign.603193.e8555_s3797_r13145_p6026_TREE/"
#rucio download --dir "$base_dir/tt4b_pThard1_semilep" "user.$user.$campaign.603193.e8555_s3797_r13167_p6026_TREE/"

# === ttbar all hadronic ===
rucio download --dir "$base_dir/ttbar_hdamp258p75_allhad" "user.$user.$campaign.410471.e6337_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttbar_hdamp258p75_allhad" "user.$user.$campaign.410471.e6337_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttbar_hdamp258p75_allhad" "user.$user.$campaign.410471.e6337_s3681_r13167_p5855_TREE/"

# === ttbar dileptonic ===
rucio download --dir "$base_dir/ttbar_hdamp258p75_dilep" "user.$user.$campaign.410472.e6348_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttbar_hdamp258p75_dilep" "user.$user.$campaign.410472.e6348_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttbar_hdamp258p75_dilep" "user.$user.$campaign.410472.e6348_s3681_r13167_p5855_TREE/"

# === ttbar non-all hadronic ===
rucio download --dir "$base_dir/ttbar_hdamp258p75_nonallhad" "user.$user.$campaign.410470.e6337_s3681_r13167_p5855_TREE/"
rucio download --dir "$base_dir/ttbar_hdamp258p75_nonallhad" "user.$user.$campaign.410470.e6337_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttbar_hdamp258p75_nonallhad" "user.$user.$campaign.410470.e6337_s3681_r13144_p5855_TREE/"

# === ttH all hadronic ===
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346343.e7148_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346343.e7148_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346343.e7148_s3681_r13167_p5855_TREE/"

# === ttH dileptonic ===
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346345.e7148_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346345.e7148_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346345.e7148_s3681_r13167_p5855_TREE/"

# === ttH semileptonic ===
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346344.e7148_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346344.e7148_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttH125" "user.$user.$campaign.346344.e7148_s3681_r13167_p5855_TREE/"

# === ttZqq ===
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504338.e8255_s3797_r13167_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504338.e8255_s3797_r13144_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504338.e8255_s3797_r13145_p5855_TREE/"

# === ttZnunu ===
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504346.e8255_s3797_r13167_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504346.e8255_s3797_r13145_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504346.e8255_s3797_r13144_p5855_TREE/"

# === tttautau ===
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504342.e8255_s3797_r13145_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504342.e8255_s3797_r13167_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504342.e8255_s3797_r13144_p5855_TREE/"

# === ttmumu ===
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504334.e8255_s3797_r13145_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504334.e8255_s3797_r13144_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504334.e8255_s3797_r13167_p5855_TREE/"

# === ttee ===
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504330.e8255_s3797_r13167_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504330.e8255_s3797_r13145_p5855_TREE/"
rucio download --dir "$base_dir/tt1Z" "user.$user.$campaign.504330.e8255_s3797_r13144_p5855_TREE/"

# === ttZZ ===
rucio download --dir "$base_dir/ttZZ" "user.$user.$campaign.500462.e8041_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttZZ" "user.$user.$campaign.500462.e8041_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttZZ" "user.$user.$campaign.500462.e8041_a907_r14861_p5855_TREE/"

# === 4 top ===
rucio download --dir "$base_dir/tttt" "user.$user.$campaign.412043.e7101_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/tttt" "user.$user.$campaign.412043.e7101_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/tttt" "user.$user.$campaign.412043.e7101_a907_r14861_p5855_TREE/"

# === 3 top ===
rucio download --dir "$base_dir/3top" "user.$user.$campaign.516978.e8461_s3797_r13144_p5855_TREE/"
rucio download --dir "$base_dir/3top" "user.$user.$campaign.516978.e8461_s3797_r13145_p5855_TREE/"
rucio download --dir "$base_dir/3top" "user.$user.$campaign.516978.e8461_s3797_r13167_p5855_TREE/"

# === ttWW ===
rucio download --dir "$base_dir/ttWW" "user.$user.$campaign.410081.e4111_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttWW" "user.$user.$campaign.410081.e4111_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttWW" "user.$user.$campaign.410081.e4111_s3681_r13167_p5855_TREE/"

# === tt1W ===
rucio download --dir "$base_dir/tt1W" "user.$user.$campaign.700706.e8470_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/tt1W" "user.$user.$campaign.700706.e8470_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/tt1W" "user.$user.$campaign.700706.e8470_a907_r14861_p5855_TREE/"

# === ttWH ===
rucio download --dir "$base_dir/ttWH" "user.$user.$campaign.500461.e8041_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttWH" "user.$user.$campaign.500461.e8041_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttWH" "user.$user.$campaign.500461.e8041_a907_r14861_p5855_TREE/"

# === ttWZ ===
rucio download --dir "$base_dir/ttWZ" "user.$user.$campaign.500463.e8041_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttWZ" "user.$user.$campaign.500463.e8041_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttWZ" "user.$user.$campaign.500463.e8041_a907_r14861_p5855_TREE/"

## singleTop

# === Wt top ===
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410646.e6552_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410646.e6552_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410646.e6552_s3681_r13167_p5855_TREE/"

# === Wt antitop ===
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410647.e6552_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410647.e6552_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410647.e6552_s3681_r13167_p5855_TREE/"

# === tZ ===
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410560.e5803_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410560.e5803_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410560.e5803_s3681_r13167_p5855_TREE/"

# === tWZ ===
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410408.e6423_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410408.e6423_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/singleTop" "user.$user.$campaign.410408.e6423_s3681_r13167_p5855_TREE/"

## V+JETS

# === Zee maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700320.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700320.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700320.e8351_s3681_r13167_p5855_TREE/"

# === Zee maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700321.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700321.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700321.e8351_s3681_r13167_p5855_TREE/"

# === Zee maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700322.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700322.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700322.e8351_s3681_r13167_p5855_TREE/"

# === Zmumu maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700323.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700323.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700323.e8351_s3681_r13167_p5855_TREE/"

# === Zmumu maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700324.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700324.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700324.e8351_s3681_r13167_p5855_TREE/"

# === Zmumu maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700325.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700325.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700325.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau LL maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700326.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700326.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700326.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau LL maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700327.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700327.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700327.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau LL maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700328.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700328.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700328.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau LH maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700329.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700329.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700329.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau LH maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700330.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700330.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700330.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau LH maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700331.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700331.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700331.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau HH maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700332.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700332.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700332.e8351_s3681_r13167_p5855_TREE/"

# === Ztautau HH maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700334.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700334.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700334.e8351_s3681_r13167_p5855_TREE/"

# === Znunu pTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700335.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700335.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700335.e8351_s3681_r13167_p5855_TREE/"

# === Znunu pTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700336.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700336.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700336.e8351_s3681_r13167_p5855_TREE/"

# === Znunu pTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700337.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700337.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700337.e8351_s3681_r13167_p5855_TREE/"

# === Wenu maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700338.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700338.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700338.e8351_s3681_r13167_p5855_TREE/"

# === Wenu maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700339.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700339.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700339.e8351_s3681_r13167_p5855_TREE/"

# === Wenu maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700340.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700340.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700340.e8351_s3681_r13167_p5855_TREE/"

# === Wmunu maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700341.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700341.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700341.e8351_s3681_r13167_p5855_TREE/"

# === Wmunu maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700342.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700342.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700342.e8351_s3681_r13167_p5855_TREE/"

# === Wmunu maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700343.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700343.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700343.e8351_s3681_r13167_p5855_TREE/"

# === Wtaunu L maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700344.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700344.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700344.e8351_s3681_r13167_p5855_TREE/"

# === Wtaunu L maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700345.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700345.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700345.e8351_s3681_r13167_p5855_TREE/"

# === Wtaunu L maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700346.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700346.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700346.e8351_s3681_r13167_p5855_TREE/"

# === Wtaunu H maxHTpTV2 BFilter ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700347.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700347.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700347.e8351_s3681_r13167_p5855_TREE/"

# === Wtaunu H maxHTpTV2 CFilterBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700348.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700348.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700348.e8351_s3681_r13167_p5855_TREE/"

# === Wtaunu H maxHTpTV2 CVetoBVeto ===
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700349.e8351_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700349.e8351_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "user.$user.$campaign.700349.e8351_s3681_r13167_p5855_TREE/"

# === ttbar mc23 ===
#rucio download --dir "$base_dir/ttbar_mc23" "user.$user.$campaign.601237.e8514_s4162_r14622_p5855_TREE/"
#rucio download --dir "$base_dir/ttbar_mc23" "user.$user.$campaign.601230.e8514_s4162_r14622_p5855_TREE/"
#rucio download --dir "$base_dir/ttbar_mc23" "user.$user.$campaign.601229.e8514_s4162_r14622_p5855_TREE/"

# === mc 23 ===
#rucio download --dir "$base_dir/ttH_mc23" "user.$user.$campaign.602637.e8549_s4162_r14622_p5855_TREE/"
#rucio download --dir "$base_dir/ttH_mc23" "user.$user.$campaign.602638.e8549_s4162_r14622_p5855_TREE/"

#rucio download --dir "$base_dir/ttHH_mc23" "user.$user.$campaign.523074.e8549_a910_r14932_p5855_TREE/"
#rucio download --dir "$base_dir/ttHH_mc23" "user.$user.$campaign.523073.e8549_a910_r14932_p5855_TREE/"
#rucio download --dir "$base_dir/ttHH_mc23" "user.$user.$campaign.523072.e8549_a910_r14932_p5855_TREE/"

#rucio download --dir "$base_dir/ttVV_mc23" "user.$user.$campaign.525360.e8532_s4162_r14622_p5855_TREE/"
#rucio download --dir "$base_dir/ttVV_mc23" "user.$user.$campaign.525357.e8532_s4162_r14622_p5855_TREE/"
#rucio download --dir "$base_dir/ttVV_mc23" "user.$user.$campaign.525358.e8532_s4162_r14622_p5855_TREE/"
#rucio download --dir "$base_dir/ttVV_mc23" "user.$user.$campaign.525361.e8532_s4162_r14622_p5855_TREE/"

#rucio download --dir "$base_dir/singleTop_mc23" "user.$user.$campaign.525955.e8558_s4159_r15224_p6026_TREE/"
#rucio download --dir "$base_dir/singleTop_mc23" "user.$user.$campaign.525955.e8558_s4162_r14622_p6056_TREE/"

