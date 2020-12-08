cd /eos/user/c/cpeterso/MG5_aMC_v2_7_3/
screen
setupATLAS
lsetup "root 6.20.06-x86_64-centos7-gcc8-opt"
export LD_LIBRARY_PATH=/eos/home-c/cpeterso/MG5_aMC_v2_7_3/HEPTools/lhapdf6/lib:$LD_LIBRARY_PATH
export ROOT_INCLUDE_PATH=/eos/home-c/cpeterso/MG5_aMC_v2_7_3/HEPTools/madanalysis5/madanalysis5/tools/delphes/external:$ROOT_INCLUDE_PATH
#rm -rf DMSimp_t-S3D_uR_scan_400_500/HTML/run*
#rm -rf DMSimp_t-S3D_uR_scan_400_500/Events/run*
cp /eos/user/../../t_channel_Param_Scan/ma5_recast_card.dat  /eos/user/../../MG5_aMC_v2_8_1/DMSimp_t-S3D_uR_scan/
cp /eos/user/../../t_channel_Param_Scan/ma5_run_card.dat  /eos/user/../../MG5_aMC_v2_8_1/DMSimp_t-S3D_uR_scan/
cp /eos/user/../../t_channel_Param_Scan/param_card.dat  /eos/user/../../MG5_aMC_v2_8_1/DMSimp_t-S3D_uR_scan/Cards/
cp /eos/user/../../t_channel_Param_Scan/ma5_recast_card.dat  /eos/user/../../MG5_aMC_v2_8_1/DMSimp_t-S3D_uR_scan/Cards/
cp /eos/user/../../t_channel_Param_Scan/proc_card_mg5.dat  /eos/user/../../MG5_aMC_v2_8_1/DMSimp_t-S3D_uR_scan/Cards/
cp /eos/user/../../t_channel_Param_Scan/run_card.dat /eos/user/../../MG5_aMC_v2_8_1/DMSimp_t-S3D_uR_scan/Cards/
python2 ./bin/mg5_aMC
launch DMSImp_t-S3D_uR_10_100
shower=Pythia8
analysis=MadAnalysis5
done
