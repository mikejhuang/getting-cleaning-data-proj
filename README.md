Instructions to reproduce the tidy dataset
------------------------------------------
To reproduce the tidy dataset, first download the original Human Activity Recognition Using Dataset from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Extract data into a folder and place the run_analysis.R file into that folder. Run the run_analysis.R script that cleans and organizes the data by combining the training and test datasets and selecting the mean and standard deviation for each variable.
 
Overview of script process
--------------------------
1. Load each respective dataset from the test and train data. Load the activity and subject labels.
2. Convert datasets to a data frame
3. Subtitute number on activity label with descriptive name associated with number
4. Combine labels with data sets
5. Merge training and test data
6. Select columns with mean and std and discard the rest of the data

