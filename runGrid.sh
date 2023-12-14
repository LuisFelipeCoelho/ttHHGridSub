#lsetup rucio
#lsetup panda

easyjet-gridsubmit --mc-list MCList.txt --run-config ../easyjet/ttHHAnalysis/share/RunConfig-PHYSLITE-ttHH.yaml --exec ttHH-ntupler --nFiles 10 --campaign 003
