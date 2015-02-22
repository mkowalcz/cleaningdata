CodeBook.md


CodeBook

This codebook includes source data information and transformations conducted 

Design

The source data was obtained from the UCI Machine Learning Repository.  List of operations below:

    Downloaded dataset
    Loaded test and training datasets into dataframes
    Loaded source variable names for test and training data sets 
    Loaded activity labels
    Combined test and training data frames
    Made dataframes for mean and standard deviation 
    Combined the dataframes 
    Outputted "merged_data.txt" 
    Transformed dataset with data.table to group tidy data by subject, activity
    Calculated mean and standard deviation 
    Outputted "calc_tidy_data.txt" 

Variables

    subjectId: 1 to 30 each participant in the study
    activity: the activity of subject 
    tBodyAcc-mean-X
    tBodyAcc-mean-Y
    tBodyAcc-mean-Z
    tBodyAcc-std-X
    tBodyAcc-std-Y
    tBodyAcc-std-Z
    tGravityAcc-mean-X
    tGravityAcc-mean-Y
    tGravityAcc-mean-Z
    tGravityAcc-std-X
    tGravityAcc-std-Y
    tGravityAcc-std-Z
    tBodyAccJerk-mean-X
    tBodyAccJerk-mean-Y
    tBodyAccJerk-mean-Z
    tBodyAccJerk-std-X
    tBodyAccJerk-std-Y
    tBodyAccJerk-std-Z
    tBodyGyro-mean-X
    tBodyGyro-mean-Y
    tBodyGyro-mean-Z
    tBodyGyro-std-X
    tBodyGyro-std-Y
    tBodyGyro-std-Z
    tBodyGyroJerk-mean-X
    tBodyGyroJerk-mean-Y
    tBodyGyroJerk-mean-Z
    tBodyGyroJerk-std-X
    tBodyGyroJerk-std-Y
    tBodyGyroJerk-std-Z
    tBodyAccMag-mean
    tBodyAccMag-std
    tGravityAccMag-mean
    tGravityAccMag-std
    tBodyAccJerkMag-mean
    tBodyAccJerkMag-std
    tBodyGyroMag-mean
    tBodyGyroMag-std
    tBodyGyroJerkMag-mean
    tBodyGyroJerkMag-std
    fBodyAcc-mean-X
    fBodyAcc-mean-Y
    fBodyAcc-mean-Z
    fBodyAcc-std-X
    fBodyAcc-std-Y
    fBodyAcc-std-Z
    fBodyAccJerk-mean-X
    fBodyAccJerk-mean-Y
    fBodyAccJerk-mean-Z
    fBodyAccJerk-std-X
    fBodyAccJerk-std-Y
    fBodyAccJerk-std-Z
    fBodyGyro-mean-X
    fBodyGyro-mean-Y
    fBodyGyro-mean-Z
    fBodyGyro-std-X
    fBodyGyro-std-Y
    fBodyGyro-std-Z
    fBodyAccMag-mean
    fBodyAccMag-std
    fBodyBodyAccJerkMag-mean
    fBodyBodyAccJerkMag-std
    fBodyBodyGyroMag-mean
    fBodyBodyGyroMag-std
    fBodyBodyGyroJerkMag-mean
    fBodyBodyGyroJerkMag-std
