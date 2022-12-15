# Accessing step 4 folder
cd BEAR/pipe_step_4_clf/pipe_step_4_clf_clfers/preprocess_script/
# Following three preprocessing steps are required before classifier action
python preprocess_class_labels_for_classifiers.py

cd ../../
cd BEAR/pipe_step_4_clf_clfers/NB/
echo "starting classifiers. 1. NB, 2. SVM, 3.RF"
# classifier action
python NaiveBayes.py

cd ../../
cd BEAR/pipe_step_4_clf_clfers/SVM/

python SVM_StratKfold3_gammaSuto_rbf.py

cd ../../
#cd BEAR/pipe_step_4_clf_clfers/RF/
#python RandomForest_classifier_allfiles.py


echo ""
echo ""
echo "========================"
echo "Classifier Evaulation Complete"
echo ""
echo "Please, run the following script to get bar plots"
echo "bash BEAR/run_step_5_barplots_without_bootstrapping.sh"
