#cleaning any previous work
scp BEAR/scripts/configuration.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/configuration.py

echo "Cleaning any previous files"
rm -f -v BEAR/pipe_step_2_FS/pipe_step_2_output/*csv
rm -f -v BEAR/pipe_step_3_FAggregation/pipe_step_3_Fselected_input/*csv
rm -f -v BEAR/pipe_step_3_FAggregation/pipe_step_3_make_venn/output_vennDiagram/*pdf
rm -f -v BEAR/pipe_step_3_FAggregation/pipe_step_3_make_venn/output_vennDiagram/*txt
rm -f -v BEAR/pipe_step_3_FAggregation/pipe_step_3_make_ensemble/ensemble_output/*csv
rm -f -v BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates/*csv
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB/*csv
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB/*pdf
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB/*txt
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM/*csv
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM/*pdf
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM/*txt
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF/*csv
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF/*pdf
rm -f -v BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF/*txt
rm -f -v BEAR/pipe_step_4_clf/result_auc_for_each_position/*txt
rm -f -v BEAR/pipe_step_4_clf/result_bar_plots/*pdf
rm -f -v BEAR/pipe_step_4_clf/result_classifier_evalutions/*pdf
echo " "
echo "Cleaning any previous files complete."
#read -p "Press [Enter] key to continue..."

scp $1 BEAR/pipe_step_2_FS/pipe_step_2_input/input.csv
#scp $1 BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB/Randomized.csv
#scp $1 BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF/Randomized.csv
#scp $1 BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM/Randomized.csv
# Access the folder pipe_step_2_FS for step 2
#cd BEAR/pipe_step_2_FS/

echo " "
echo " "
echo "================================================="
echo "Step 1 is complete"
echo "Please, run the following bash script now."
echo ""
echo "bash BEAR/run_step_2_FeatureSelection.sh"
