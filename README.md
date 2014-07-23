coursera-getting-and-cleaning-data
==================================

This repo includes my worked solutions for the Coursera "Getting and Cleaning Data" Course Project

##data

The data used in this project can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The download should be unzipped as "UCI HAR Dataset" and placed within a working directory. Within your programming environment, set the working directory to be this directory. Running the run_analysis.R script will use the data within the directory.  

##run_analysis.R

The run_analysis.R script performs the following tasks:
- Merges the training and the test sets to create one complete dataset
- Extracts the measurements on the mean and the standard deviation for each measurement
- Uses descriptive activity names to name the activities in the dataset
- Labels the columns of the dataset appropriately
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Running the script requires no arguments.
