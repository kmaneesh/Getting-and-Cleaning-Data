Project for Getting and Cleaning Data
=====================================

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Good luck!

Solution
========

Download Data
-------------
> The run_analysis code will read the 'Human Activity Recognition Using Smartphones Data Set' avaliable at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and saves as data.zip in current directory.
```r
dataUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataName = "data.zip"
if(!file.exists(dataName)){
  download.file(dataUrl, dataName, method="curl")
}
```

Unzip Data
----------
> The run_analysis code will zips the data.zip file in "UCI HAR Dataset" directory, if not unzipped earlier.
```r
datasetPath = "UCI HAR Dataset"
if(!file.exists(datasetPath)){
  unzip(dataName)
}
```

Read Features, Extract desired features (std & mean)
----------------------------------------------------
> The run_analysis code will reads the feature name from the "features.txt" file and extracts a vector of desired feature using the grep function.
```r
feature_names <- read.table(paste(datasetPath, '/',"features.txt", sep=''))
desired_features <- grep("std|mean", feature_names$V2)
```

Read features dataset, Extract desired features from dataset, Attach column names
------------------------------------------------------------
>The run_analysis code will reads and merges both training and test features sets (/train/X_train.txt and /test/X_test.txt) and attaches the desired features column names to the features data frame.
```r
train_features <- read.table(paste(datasetPath, '/', 'train', '/', 'X_train.txt', sep=''))
desired_train_features <- train_features[,desired_features]
test_features <- read.table(paste(datasetPath, '/', 'test', '/', 'X_test.txt', sep=''))
desired_test_features = test_features[,desired_features]
total_features <- rbind(desired_train_features, desired_test_features)
colnames(total_features) <- feature_names[desired_features, 2]
```

Read activity labels
--------------------
>The run_analysis code will extract the activity labels from activity_labels file.
```r
activity_labels <- read.table(paste(datasetPath, '/',"activity_labels.txt", sep=''))
```

Read activity dataset
------------------------------------------------------------
>The run_analysis code will reads and merges both training and test activities (/train/y_train.txt and /test/y_test.txt).
```r
train_activities <- read.table(paste(datasetPath, '/', 'train', '/', 'y_train.txt', sep=''))
test_activities <- read.table(paste(datasetPath, '/', 'test', '/', 'y_test.txt', sep=''))
total_activities <- rbind(train_activities, test_activities)
```

Attach descriptive activity names to the columns of activity data frame
------------------------------------------------
> The run_analysis code will attaches the column names for the activities to the activity data frame using factor function
```r
total_activities$activity <- factor(total_activities$V1, levels = activity_labels$V1, labels = activity_labels$V2)
```

Read subject dataset
------------------------------------------------------------
>The run_analysis code will reads and merges both training and test subjects for(/train/subject_train.txt and /test/subject_test.txt).
```r
train_subjects <- read.table(paste(datasetPath, '/', 'train', '/', 'subject_train.txt', sep=''))
test_subjects <- read.table(paste(datasetPath, '/', 'test', '/', 'subject_test.txt', sep=''))
total_subjects <- rbind(train_subjects, test_subjects)
```

Merge subject and activity data frame
--------------------------------------
>The run_analysis code will merges subject and activity data frame using cbind and assign column names
```r
subjects_and_activities <- cbind(total_subjects, total_activities$activity)
colnames(subjects_and_activities) <- c("subject", "activity")
```

Merge subject, activity with feature data frame
-----------------------------------------------
>The run_analysis code will merges subject_and_activity data frame with the features data frame and creates the activity data frame or the tidy data frame
```r
activity_frame <- cbind(subjects_and_activities, total_features)
```

Calculate mean for subject, activity
------------------------------------
>The run_analysis code will calculate the mean of the features using aggregate function with by parameter (subject, activity) and generates a result_frame, assign names to frame
```r
result_frame <- aggregate(activity_frame[,3:81], by = list(activity_frame$subject, activity_frame$activity), FUN = mean)
colnames(result_frame)[1:2] <- c("subject", "activity")
```

Export result as tidyData.csv
------------------------------
>The run_analysis code will  exports the final tidy data set to a 'tidyData.csv'.
```r
write.table(result_frame, file="tidyData.csv", row.names = FALSE)
```

