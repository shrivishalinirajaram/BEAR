# Run the bash script for feature selection
echo ""
echo "Feature Selection Started."
echo " "
echo " "
python BEAR/pipe_step_2_FS/pipe_step_2_scripts/Correlation_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_input/input.csv BEAR/pipe_step_2_FS/pipe_step_2_output/
echo " "
python BEAR/pipe_step_2_FS/pipe_step_2_scripts/Inforgain_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_input/input.csv BEAR/pipe_step_2_FS/pipe_step_2_output/
echo " "
python BEAR/pipe_step_2_FS/pipe_step_2_scripts/InformationGainRatio_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_input/input.csv BEAR/pipe_step_2_FS/pipe_step_2_output/
echo " "
python BEAR/pipe_step_2_FS/pipe_step_2_scripts/Relief_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_input/input.csv BEAR/pipe_step_2_FS/pipe_step_2_output/
echo " "
python BEAR/pipe_step_2_FS/pipe_step_2_scripts/SymmetricalUncert_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_input/input.csv BEAR/pipe_step_2_FS/pipe_step_2_output/
echo " "
scp BEAR/pipe_step_2_FS/pipe_step_2_output/*.csv BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB
scp BEAR/pipe_step_2_FS/pipe_step_2_output/*.csv BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM
scp BEAR/pipe_step_2_FS/pipe_step_2_output/*.csv BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF
scp BEAR/pipe_step_2_FS/pipe_step_2_output/*.csv BEAR/pipe_step_3_FAggregation/pipe_step_3_Fselected_input/

echo ""
echo ""
echo "================================================="
echo "Feature Selection is Complete"
echo ""
echo "Please, run the following bash script with numeric argument (top_features) now. "
echo ""
echo "bash BEAR/run_step_3_vennDiFeAEns_without_bootstrapping.sh top_featuers"
