Getting and Cleaning Data Project
=======================

## Description
The goal of this project is to prepare a tidy dataset from the one 
located in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Files
- README.md: This file.
- run_analysis.R: The script to prepare the tidy dataset.

## Procedure to Create the Tidy Dataset (description of run_analysis.R)
- Read the row dataset.
1. read features and activity_labels from the dataset.
2. change the colnames in activity_labels as ("activity_code", "activity_name").
3. define some useful functions.
4. read X_test, y_test, subject_test from the dataset. When reading X_test, the format is not appropreate for 
  read.table, so the create_df() function comes in. Then, add labels in X_test by using colnames().
5. merge X_test, subject_test, y_test using cbind() function.
6. read and merge for training dataset as 4.-5. processes.
7. merge the training and test dataset using rbind() function.
8. extract only the measurement on the mean and standard deviation for each measurement 
  using grep() function.
9. add activity name in the dataset using merge() function with key="activity_code".
10. labels are already added in the dataset in the process 4.
11. creates a second, independent tidy dataset with the average of each variable for each activity and each subject.
  The procedure is mostly usint tapply() and mean() functions to calculate mean in each activity and subject.
12. finally, output the tidy dataset as "tidy_data.txt".



