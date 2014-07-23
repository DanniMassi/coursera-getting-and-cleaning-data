t <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", t)
unzip(t, exdir=tempdir())
unlink(t)

currentDir <- getwd()
setwd(tempdir())

#import training data X_train.txt
X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep="")

#import training data y_train.txt
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep="")

#import training data subject_train.txt
subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep="")

#column bind training data
training_data <- cbind(X_train, y_train, subject_train)

#import test data X_test.txt
X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep="")

#import test data y_test.txt
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep="")

#import training data subject_test.txt
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep="")

#column bind test data
test_data <- cbind(X_test, y_test, subject_test)

#import feature names
features <- read.csv("./UCI HAR Dataset/features.txt", header = FALSE, sep="")

#import activity lables
activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep="")

#row bind training_data to test_data to form one complete dataset called all_data
all_data <- rbind(training_data, test_data)

#only look at mean() and std() in the features data frame
std_mean <- grep("mean|std", features$V2)
selected_features <- features[std_mean, 2]

#reduce all_data to records of just mean() and std() records
selected_data <- all_data[, c(std_mean, 562, 563) ]

#add column names
colnames(selected_data) <- c(as.character(selected_features), "Activity", "Subject")

#add descriptive activity names
selected_data$Activity <- activity_labels[selected_data$Activity, 2 ]

#independent tidy data set with the average of each variable for each activity and each subject
tidy <- aggregate(selected_data[,1:(ncol(selected_data)-2)], by=list(activity = selected_data$Activity, subject = selected_data$Subject), mean)
tidy <- tidy[order(tidy$subject), ]
write.table(tidy, file="./tidydata.txt", sep="\t", row.names=FALSE)
