#!/bin/bash

# Define the base directory
#base_dir="/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/ttHH/NTUPLES"
#base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_007_DL1"
base_dir="/eos/home-l/lfaldaul/ttHH/NTUPLES_010_GN2_77/"

# Define the user and file information
user="lfaldaul"
campaign="010_GN2_77"
#campaign="007_GN1"

## ML side

rucio download --dir "$base_dir/vvvv" "user.$user.$campaign.700605.Sh_2212_vvvv.e8433_s3681_r13167_p5855_TREE/"
rucio download --dir "$base_dir/vvvv" "user.$user.$campaign.700605.Sh_2212_vvvv.e8433_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/vvvv" "user.$user.$campaign.700605.Sh_2212_vvvv.e8433_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.525963.MGPy8EG_A14NNPDF23LO_ttHH_orth4b_SSML.e8531_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.525963.MGPy8EG_A14NNPDF23LO_ttHH_orth4b_SSML.e8531_a907_r14861_p5855_TREE/"
rucio download --dir "$base_dir/ttHH" "user.$user.$campaign.525963.MGPy8EG_A14NNPDF23LO_ttHH_orth4b_SSML.e8531_a907_r14859_p5855_TREE/"

rucio download --dir "$base_dir/tttt" "mc20_13TeV.500326.MGPy8EG_A14NNPDF31_SM4topsLOInclusive.e8092_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/tttt" "mc20_13TeV.500326.MGPy8EG_A14NNPDF31_SM4topsLOInclusive.e8092_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/tttt" "mc20_13TeV.500326.MGPy8EG_A14NNPDF31_SM4topsLOInclusive.e8092_a907_r14861_p5855_TREE/"

rucio download --dir "$base_dir/ttWZ" "mc20_13TeV.500463.MGPy8EG_A14NNPDF23LO_ttWZ.e8041_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttWZ" "mc20_13TeV.500463.MGPy8EG_A14NNPDF23LO_ttWZ.e8041_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttWZ" "mc20_13TeV.500463.MGPy8EG_A14NNPDF23LO_ttWZ.e8041_a907_r14861_p5855_TREE/"

rucio download --dir "$base_dir/ttWH" "mc20_13TeV.500461.MGPy8EG_A14NNPDF23LO_ttWH.e8041_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttWH" "mc20_13TeV.500461.MGPy8EG_A14NNPDF23LO_ttWH.e8041_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttWH" "mc20_13TeV.500461.MGPy8EG_A14NNPDF23LO_ttWH.e8041_a907_r14861_p5855_TREE/"

rucio download --dir "$base_dir/ttW" "mc20_13TeV:mc20_13TeV.700706.Sh_2212_ttW_dilep.e8470_a907_r14859_p5855_TREE/"
rucio download --dir "$base_dir/ttW" "mc20_13TeV:mc20_13TeV.700706.Sh_2212_ttW_dilep.e8470_a907_r14860_p5855_TREE/"
rucio download --dir "$base_dir/ttW" "mc20_13TeV:mc20_13TeV.700706.Sh_2212_ttW_dilep.e8470_a907_r14861_p5855_TREE/"

rucio download --dir "$base_dir/ttt" "mc20_13TeV.516978.MGPy8EG_A14NNPDF23_3top.e8461_s3797_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttt" "mc20_13TeV.516978.MGPy8EG_A14NNPDF23_3top.e8461_s3797_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttt" "mc20_13TeV.516978.MGPy8EG_A14NNPDF23_3top.e8461_s3797_r13167_p5855_TREE/"

#rucio download --dir "$base_dir/ttW" "mc20_13TeV.700168.Sh_2210_ttW.e8273_s3797_r13144_p5855_TREE/"
#rucio download --dir "$base_dir/ttW" "mc20_13TeV.700168.Sh_2210_ttW.e8273_s3797_r13145_p5855_TREE/"
#rucio download --dir "$base_dir/ttW" "mc20_13TeV.700168.Sh_2210_ttW.e8273_s3797_r13167_p5855_TREE/"

rucio download --dir "$base_dir/ttWW" "mc20_13TeV.410081.MadGraphPythia8EvtGen_A14NNPDF23_ttbarWW.e4111_s3681_r13144_p5855_TREE/"
rucio download --dir "$base_dir/ttWW" "mc20_13TeV.410081.MadGraphPythia8EvtGen_A14NNPDF23_ttbarWW.e4111_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/ttWW" "mc20_13TeV.410081.MadGraphPythia8EvtGen_A14NNPDF23_ttbarWW.e4111_s3681_r13167_p5855_TREE/"

rucio download --dir "$base_dir/Vjets" "mc20_13TeV.364102.Sherpa_221_NNPDF30NNLO_Zmumu_MAXHTPTV0_70_BFilter.e5271_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "mc20_13TeV.364116.Sherpa_221_NNPDF30NNLO_Zee_MAXHTPTV0_70_BFilter.e5299_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "mc20_13TeV.364130.Sherpa_221_NNPDF30NNLO_Ztautau_MAXHTPTV0_70_BFilter.e5307_s3681_r13145_p5855_TREE/"

rucio download --dir "$base_dir/Vjets" "mc20_13TeV.364158.Sherpa_221_NNPDF30NNLO_Wmunu_MAXHTPTV0_70_BFilter.e5340_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "mc20_13TeV.364172.Sherpa_221_NNPDF30NNLO_Wenu_MAXHTPTV0_70_BFilter.e5340_s3681_r13145_p5855_TREE/"
rucio download --dir "$base_dir/Vjets" "mc20_13TeV.364186.Sherpa_221_NNPDF30NNLO_Wtaunu_MAXHTPTV0_70_BFilter.e5340_s3681_r13145_p5855_TREE/"

# === data ===

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp15_v01_p5855_TREE/"

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp16_v01_p5855_TREE/"

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp17_v01_p5855_TREE/"

rucio download --dir "$base_dir/data" "user.$user.$campaign.periodAllYear.physics_Main.grp18_v01_p5855_TREE/"

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
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410471.PhPy8EG_A14_ttbar_hdamp258p75_allhad.e6337_s3681_r13167_p5855_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410471.PhPy8EG_A14_ttbar_hdamp258p75_allhad.e6337_s3681_r13144_p5855_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttbar" "user.$user.$campaign.410471.PhPy8EG_A14_ttbar_hdamp258p75_allhad.e6337_s3681_r13145_p5855_TREE"

# === ttH all had ===

# MC20a - r13167
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346343.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_allhad.e7148_s3681_r13144_p5855_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346343.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_allhad.e7148_s3681_r13145_p5855_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346343.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_allhad.e7148_s3681_r13167_p5855_TREE"

# === ttH single lep ===

# MC20a - r13167
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346344.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_semilep.e7148_s3681_r13144_p5855_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346344.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_semilep.e7148_s3681_r13145_p5855_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346344.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_semilep.e7148_s3681_r13167_p5855_TREE"

# === ttH dilep ===

# MC20a - r13167
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346345.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_dilep.e7148_s3681_r13144_p5855_TREE"

# MC20d - r13144
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346345.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_dilep.e7148_s3681_r13145_p5855_TREE"

# MC20e - r13145
rucio download --dir "$base_dir/ttH" "user.$user.$campaign.346345.PhPy8EG_A14NNPDF23_NNPDF30ME_ttH125_dilep.e7148_s3681_r13167_p5855_TREE"

# === ttZqq ===

# MC20a - r13167
#rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.410157.aMcAtNloPythia8EvtGen_MEN30NLO_A14N23LO_ttZqq.e5070_s3681_r13167_p5855_TREE"

# MC20d - r13144
#rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.410157.aMcAtNloPythia8EvtGen_MEN30NLO_A14N23LO_ttZqq.e5070_s3681_r13144_p5855_TREE"

# MC20e - r13145
#rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.410157.aMcAtNloPythia8EvtGen_MEN30NLO_A14N23LO_ttZqq.e5070_s3681_r13145_p5855_TREE"

rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504338.aMCPy8EG_NNPDF30NLO_A14N23LO_ttZqq.e8255_s3797_r13167_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504338.aMCPy8EG_NNPDF30NLO_A14N23LO_ttZqq.e8255_s3797_r13144_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign_test.504338.aMCPy8EG_NNPDF30NLO_A14N23LO_ttZqq.e8255_s3797_r13145_p5855_TREE"

rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504346.aMCPy8EG_NNPDF30NLO_A14N23LO_ttZnunu.e8255_s3797_r13167_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504346.aMCPy8EG_NNPDF30NLO_A14N23LO_ttZnunu.e8255_s3797_r13145_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504346.aMCPy8EG_NNPDF30NLO_A14N23LO_ttZnunu.e8255_s3797_r13144_p5855_TREE"

rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504342.aMCPy8EG_NNPDF30NLO_A14N23LO_tttautau.e8255_s3797_r13145_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504342.aMCPy8EG_NNPDF30NLO_A14N23LO_tttautau.e8255_s3797_r13167_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504342.aMCPy8EG_NNPDF30NLO_A14N23LO_tttautau.e8255_s3797_r13144_p5855_TREE"

rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504334.aMCPy8EG_NNPDF30NLO_A14N23LO_ttmumu.e8255_s3797_r13145_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504334.aMCPy8EG_NNPDF30NLO_A14N23LO_ttmumu.e8255_s3797_r13144_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504334.aMCPy8EG_NNPDF30NLO_A14N23LO_ttmumu.e8255_s3797_r13167_p5855_TREE"

rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504330.aMCPy8EG_NNPDF30NLO_A14N23LO_ttee.e8255_s3797_r13167_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504330.aMCPy8EG_NNPDF30NLO_A14N23LO_ttee.e8255_s3797_r13145_p5855_TREE"
rucio download --dir "$base_dir/ttZqq" "user.$user.$campaign.504330.aMCPy8EG_NNPDF30NLO_A14N23LO_ttee.e8255_s3797_r13144_p5855_TREE"

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
