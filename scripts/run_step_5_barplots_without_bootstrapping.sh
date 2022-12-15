echo "This step can only be run if previous step (run_step_4_clfEvaluation_without_bootstrapping.sh) completed successfully"
echo "This step generate the summary in BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates"
cd BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates/
python CreateAUC_DF.py
cd ../..
echo ""
echo "Summary Generated: BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates/"

# 
## Generating Bar charts

#cd BEAR/pipe_step_4_clf/result_auc_for_each_position/
#python Bar_Plot.py
##python Bar_Plot.py RF_AUC.txt
##python Bar_Plot.py SVM_AUC.txt
#cd ../..

#echo ""
#echo "Bar Plots Generated"
