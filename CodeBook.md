Tidy Dataset Codebook
=====================

Overview
--------
This dataset contains is sourced from the "Human Activity Recognition Using Smartphones Data Set" from UCI. ( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

The data consists of signals from various sensors (accelerometer and gyrocope) during six different activities for the purpose of activity identification. The data was collected from 30 test subjects each performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

Data Variables
--------------
These are the signals that were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag


The set of variables that were estimated from the signals are: 

* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

These variables combined forms a 561 feature vector. 

The original data as provided was split into two groups, a training data set and a test data set. 
For the purpose of our analysis, both the training and test data sets were merged together.
The data was organized into columns with each column representing a variable and each row representing a combination of a subject and an activity. 

