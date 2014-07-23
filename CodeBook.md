CodeBook for Getting and Cleaning Data Course Project
=====================================================

Variables
=========

The following variables

Data
====

The data from files "UCI HAR Dataset/train/X_train.txt", "UCI HAR Dataset/train/y_train.txt" and "UCI HAR Dataset/train/subject_train.txt" were concatenated by column. The same was done for the test files. The concatenated training and test data were then row bound, or "stacked" to create the full, merged dataset.

The activity labels and the features were also read into respective data frames.

Cleaning and Tidying the Data
=============================

To begin, the merged dataset was subsetted to only include the records relating to the mean and standard deviation. This was done using the grep() function to search for occurences of "mean" and "std" in the feature data frame.

The Activity (from y_train.txt) and Subject (from subject_train.txt) columns were bound onto the end of this subsetted dataset.

Following that the Activity column, which contained numbers, was transformed to contain meaningful activity names. These names were: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The subsetted dataset was then given descriptive column names, taken from the features data frame, with the final two columns allocated the names "Activity" and "Subject".

This completed the first tidy dataset of the project.

The second tidy dataset of the project was required to show the average of each variable for each activity and each subject. This was done using the aggregate() function, with a list argument bringing together the Activity and Subject columns. The Activity and Subject columns were excluded in the aggregate() function, however. The final tidy dataset was ordered by Subject and then written to a file called "tidydata.txt" within the working directory.



