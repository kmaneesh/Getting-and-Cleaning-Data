## R script for Running The Analysis on training dataset collected from Smart Phones
## Creates a tidy data set and saves in tidy.txt

# Download data, if not downlaoded already
dataUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataName = "data.zip"
if(!file.exists(dataName)){
  download.file(dataUrl, dataName, method="curl")
}

# Dataset path
datasetPath <- "UCI HAR Dataset"

# Unzip Data, if not unziped already
if(!file.exists(datasetPath)){
  unzip(dataName)
}

# Read features, extract desired features (factor)
feature_names <- read.table(paste(datasetPath, '/',"features.txt", sep=''))
desired_features <- grep("std|mean", feature_names$V2)

# Read Train, Test Features
train_features <- read.table(paste(datasetPath, '/', 'train', '/', 'X_train.txt', sep=''))
desired_train_features <- train_features[,desired_features]

test_features <- read.table(paste(datasetPath, '/', 'test', '/', 'X_test.txt', sep=''))
desired_test_features <- test_features[,desired_features]

# Combine two dataset
total_features <- rbind(desired_train_features, desired_test_features)

# Attach Colnames
colnames(total_features) <- feature_names[desired_features, 2]

# Read activity label
activity_labels <- read.table(paste(datasetPath, '/',"activity_labels.txt", sep=''))

# Read Train, Test Activity
train_activities <- read.table(paste(datasetPath, '/', 'train', '/', 'y_train.txt', sep=''))
test_activities <- read.table(paste(datasetPath, '/', 'test', '/', 'y_test.txt', sep=''))

# Combine two dataset
total_activities <- rbind(train_activities, test_activities)

# Attach descriptive activity names to colnames 
total_activities$activity <- factor(total_activities$V1, levels = activity_labels$V1, labels = activity_labels$V2)

# Read Train, Test Subjects
train_subjects <- read.table(paste(datasetPath, '/', 'train', '/', 'subject_train.txt', sep=''))
test_subjects <- read.table(paste(datasetPath, '/', 'test', '/', 'subject_test.txt', sep=''))
# Combine two dataset
total_subjects <- rbind(train_subjects, test_subjects)

# Combine and name subjects and activity names
subjects_and_activities <- cbind(total_subjects, total_activities$activity)
colnames(subjects_and_activities) <- c("subject", "activity")

# Combine with measures of interest for finished desired data frame
activity_frame <- cbind(subjects_and_activities, total_features)

# Return mean of all measures, grouped by subject and by activity.
result_frame <- aggregate(activity_frame[,3:81], by = list(activity_frame$subject, activity_frame$activity), FUN = mean)
colnames(result_frame)[1:2] <- c("subject", "activity")
write.table(result_frame, file="tidyData.csv", row.names = FALSE)
