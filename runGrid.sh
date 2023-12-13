#lsetup rucio
#lsetup panda

easyjet-gridsubmit --mc-list MCListTest.txt --run-config ../easyjet/ttHHAnalysis/share/RunConfig-PHYSLITE-ttHH.yaml --exec ttHH-ntupler --nFiles 1 --campaign 2
