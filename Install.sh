mkdir -p BEAR/configuration
mkdir -p BEAR/pipe_step_1_Bootstrapping
mkdir -p BEAR/pipe_step_1_Bootstrapping/input_file
mkdir -p BEAR/pipe_step_1_Bootstrapping/output_feature_aggregates
mkdir -p BEAR/pipe_step_2_FS
mkdir -p BEAR/pipe_step_2_FS/pipe_step_2_input
mkdir -p BEAR/pipe_step_2_FS/pipe_step_2_scripts
mkdir -p BEAR/pipe_step_2_FS/pipe_step_2_output
mkdir -p BEAR/pipe_step_3_FAggregation
mkdir -p BEAR/pipe_step_3_FAggregation/pipe_step_3_make_ensemble
mkdir -p BEAR/pipe_step_3_FAggregation/pipe_step_3_make_ensemble/ensemble_output
mkdir -p BEAR/pipe_step_3_FAggregation/pipe_step_3_make_venn
mkdir -p BEAR/pipe_step_3_FAggregation/pipe_step_3_make_venn/output_vennDiagram
mkdir -p BEAR/pipe_step_3_FAggregation/pipe_step_3_Fselected_input
mkdir -p BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates
mkdir -p BEAR/pipe_step_4_clf
mkdir -p BEAR/pipe_step_4_clf/result_bar_plots
mkdir -p BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers
mkdir -p BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF
mkdir -p BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM
mkdir -p BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/preprocess_script
mkdir -p BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB
mkdir -p BEAR/pipe_step_4_clf/result_auc_for_each_position
mkdir -p BEAR/pipe_step_4_clf/result_classifier_evalutions

scp BEAR/scripts/configuration.py BEAR/configuration/configuration.py
scp BEAR/scripts/configuration.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/configuration.py

scp BEAR/scripts/Correlation_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/Correlation_Fselection.py
scp BEAR/scripts/SymmetricalUncert_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/SymmetricalUncert_Fselection.py
scp BEAR/scripts/Relief_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/Relief_Fselection.py
scp BEAR/scripts/InformationGainRatio_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/InformationGainRatio_Fselection.py
scp BEAR/scripts/Inforgain_Fselection.py BEAR/pipe_step_2_FS/pipe_step_2_scripts/Inforgain_Fselection.py

scp BEAR/scripts/ensemble_weighting.py BEAR/pipe_step_3_FAggregation/pipe_step_3_make_ensemble/ensemble_weighting.py

scp BEAR/scripts/create_venn.py BEAR/pipe_step_3_FAggregation/pipe_step_3_make_venn/create_venn.py
scp BEAR/scripts/fileAggregate.py BEAR/pipe_step_3_FAggregation/pipe_step_3_make_venn/fileAggregate.py

scp BEAR/scripts/CreateAUC_DF.py BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates/CreateAUC_DF.py
scp BEAR/scripts/NB_SVM_functions.py BEAR/pipe_step_3_FAggregation/pipe_step_3_make_aggregates/NB_SVM_functions.py

scp BEAR/scripts/RandomForest_classifier_allfiles.py BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/RF/RandomForest_classifier_allfiles.py
scp BEAR/scripts/SVM_StratKfold3_gammaSuto_rbf.py BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/SVM/SVM_StratKfold3_gammaSuto_rbf.py
scp BEAR/scripts/preprocess_class_labels_for_classifiers.py BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/preprocess_script/preprocess_class_labels_for_classifiers.py
scp BEAR/scripts/NaiveBayes.py BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/NB/NaiveBayes.py


scp BEAR/scripts/Bar_Plot.py BEAR/pipe_step_4_clf/result_auc_for_each_position/Bar_Plot.py


scp BEAR/scripts/*sh .


# Make all bash scripts executable
for f in *.sh;do chmod +x $f;done
