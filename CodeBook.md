CodeBook for Getting and Cleaning Data Course Project
=====================================================

##Variables

Columns 1 through 79 were allocated the feature names that contained the words "mean" and "std". The values of these columns were normalised and bounded by [-1, 1].
Column 80 was allocated the name "Activity" and contained values 1 through 6, corresponding to the 6 activity types found in "activity_labels.txt"
Column 81 was allocated the name "Subject" and contained values 1 through 30, corresponding to the ID of the person doing the activity.

##Data

The data from files "UCI HAR Dataset/train/X_train.txt", "UCI HAR Dataset/train/y_train.txt" and "UCI HAR Dataset/train/subject_train.txt" were concatenated by column. The same was done for the test files. The concatenated training and test data were then row bound, or "vertically stacked", to create the fully merged dataset.

The activity labels from the file "UCI HAR Dataset/activity_labels.txt" and the features from the file "UCI HAR Dataset/features.txt" were also read into respective data frames.

##Cleaning and Tidying the Data

To begin, the merged dataset was subsetted to only include the records relating to the mean and standard deviation. This was done using the grep() function to search for occurences of the words "mean" and "std" in the feature data frame.

The Activity column (from y_train.txt) and Subject column (from subject_train.txt) were bound onto the end of this subsetted dataset.

Following this, the Activity column, which contained numbers, was transformed to contain meaningful activity names. These names were: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

This dataset was also given descriptive column names, taken from the features data frame, with the final two columns being allocated the names "Activity" and "Subject".

With this, the dataset is as clean and tidy as possible.

The second task of the project was to show the average of each variable for each activity and each subject. This was done using the aggregate() function with a list argument bringing together the Activity and Subject columns. The Activity and Subject columns were excluded in the aggregate() function itself, however. The final tidy dataset was ordered by Subject and then written to a file called "tidydata.txt" within the working directory.
