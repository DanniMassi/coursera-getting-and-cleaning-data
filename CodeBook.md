CodeBook for Getting and Cleaning Data Course Project
=====================================================

Variables
=========

The following variables

Data
====

The data from files UCI HAR Dataset/train/X_train.txt, UCI HAR Dataset/train/y_train.txt and UCI HAR Dataset/train/subject_train.txt were concatenated by column. The same was done for the test files. The concatenated training and test data were then row bound, or "stacked" to create the full, merged dataset.

The activity labels and the features were also read into respective data frames.

Cleaning and Tidying the Data
=============================

To begin, the merged dataset was subsetted to only included the records pertaining to variables relating to the mean and standard deviation. 
