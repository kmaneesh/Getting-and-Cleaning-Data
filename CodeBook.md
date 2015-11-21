Human Activity Recognition Using Smartphones Dataset 
====================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity was captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:
======================================

- An identifier of the subject who carried out the experiment.
- Its activity label. 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


The mean of these vectors for each subject and activity is provided in the tidyData set by taking a mean of these vectors for each subject and each activity. 


DATA DICTIONARY - TIDY UCI HAR Dataset
======================================

SUBJECT 2
    Subject
        1  Subject 1
        2  Subject 2
        3  Subject 3
        4  Subject 4
        5  Subject 5
        6  Subject 6
        7  Subject 7
        8  Subject 8
        9  Subject 9
        10 Subject 10
        11 Subject 11
        12 Subject 12
        13 Subject 13
        14 Subject 14
        15 Subject 15
        16 Subject 16
        17 Subject 17
        18 Subject 18
        19 Subject 19
        20 Subject 20
        21 Subject 21
        22 Subject 22
        23 Subject 23
        24 Subject 24
        25 Subject 25
        26 Subject 26
        27 Subject 27
        28 Subject 28
        29 Subject 29
        30 Subject 30

ACTIVITY 
    Activity
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING

tBodyAcc-mean()-X 
        normalized and bounded within [-1,1]

tBodyAcc-mean()-Y 
        normalized and bounded within [-1,1]

tBodyAcc-mean()-Z 
        normalized and bounded within [-1,1]

tBodyAcc-std()-X 
        normalized and bounded within [-1,1]

tBodyAcc-std()-Y 
        normalized and bounded within [-1,1]

tBodyAcc-std()-Z 
        normalized and bounded within [-1,1]

tGravityAcc-mean()-X 
        normalized and bounded within [-1,1]

tGravityAcc-mean()-Y 
        normalized and bounded within [-1,1]

tGravityAcc-mean()-Z 
        normalized and bounded within [-1,1]

tGravityAcc-std()-X 
        normalized and bounded within [-1,1]

tGravityAcc-std()-Y 
        normalized and bounded within [-1,1]

tGravityAcc-std()-Z 
        normalized and bounded within [-1,1]

tBodyAccJerk-mean()-X 
        normalized and bounded within [-1,1]

tBodyAccJerk-mean()-Y 
        normalized and bounded within [-1,1]

tBodyAccJerk-mean()-Z 
        normalized and bounded within [-1,1]

tBodyAccJerk-std()-X 
        normalized and bounded within [-1,1]

tBodyAccJerk-std()-Y 
        normalized and bounded within [-1,1]

tBodyAccJerk-std()-Z 
        normalized and bounded within [-1,1]

tBodyGyro-mean()-X 
        normalized and bounded within [-1,1]

tBodyGyro-mean()-Y 
        normalized and bounded within [-1,1]

tBodyGyro-mean()-Z 
        normalized and bounded within [-1,1]

tBodyGyro-std()-X 
        normalized and bounded within [-1,1]

tBodyGyro-std()-Y 
        normalized and bounded within [-1,1]

tBodyGyro-std()-Z 
        normalized and bounded within [-1,1]

tBodyGyroJerk-mean()-X 
        normalized and bounded within [-1,1]

tBodyGyroJerk-mean()-Y 
        normalized and bounded within [-1,1]

tBodyGyroJerk-mean()-Z 
        normalized and bounded within [-1,1]

tBodyGyroJerk-std()-X 
        normalized and bounded within [-1,1]

tBodyGyroJerk-std()-Y 
        normalized and bounded within [-1,1]

tBodyGyroJerk-std()-Z 
        normalized and bounded within [-1,1]

tBodyAccMag-mean() 
        normalized and bounded within [-1,1]

tBodyAccMag-std() 
        normalized and bounded within [-1,1]

tGravityAccMag-mean() 
        normalized and bounded within [-1,1]

tGravityAccMag-std() 
        normalized and bounded within [-1,1]

tBodyAccJerkMag-mean() 
        normalized and bounded within [-1,1]

tBodyAccJerkMag-std() 
        normalized and bounded within [-1,1]

tBodyGyroMag-mean() 
        normalized and bounded within [-1,1]

tBodyGyroMag-std() 
        normalized and bounded within [-1,1]

tBodyGyroJerkMag-mean() 
        normalized and bounded within [-1,1]

tBodyGyroJerkMag-std() 
        normalized and bounded within [-1,1]

fBodyAcc-mean()-X 
        normalized and bounded within [-1,1]

fBodyAcc-mean()-Y 
        normalized and bounded within [-1,1]

fBodyAcc-mean()-Z 
        normalized and bounded within [-1,1]

fBodyAcc-std()-X 
        normalized and bounded within [-1,1]

fBodyAcc-std()-Y 
        normalized and bounded within [-1,1]

fBodyAcc-std()-Z 
        normalized and bounded within [-1,1]

fBodyAcc-meanFreq()-X 
        normalized and bounded within [-1,1]

fBodyAcc-meanFreq()-Y 
        normalized and bounded within [-1,1]

fBodyAcc-meanFreq()-Z 
        normalized and bounded within [-1,1]

fBodyAccJerk-mean()-X 
        normalized and bounded within [-1,1]

fBodyAccJerk-mean()-Y 
        normalized and bounded within [-1,1]

fBodyAccJerk-mean()-Z 
        normalized and bounded within [-1,1]

fBodyAccJerk-std()-X 
        normalized and bounded within [-1,1]

fBodyAccJerk-std()-Y 
        normalized and bounded within [-1,1]

fBodyAccJerk-std()-Z 
        normalized and bounded within [-1,1]

fBodyAccJerk-meanFreq()-X 
        normalized and bounded within [-1,1]

fBodyAccJerk-meanFreq()-Y 
        normalized and bounded within [-1,1]

fBodyAccJerk-meanFreq()-Z 
        normalized and bounded within [-1,1]

fBodyGyro-mean()-X 
        normalized and bounded within [-1,1]

fBodyGyro-mean()-Y 
        normalized and bounded within [-1,1]

fBodyGyro-mean()-Z 
        normalized and bounded within [-1,1]

fBodyGyro-std()-X 
        normalized and bounded within [-1,1]

fBodyGyro-std()-Y 
        normalized and bounded within [-1,1]

fBodyGyro-std()-Z 
        normalized and bounded within [-1,1]

fBodyGyro-meanFreq()-X 
        normalized and bounded within [-1,1]

fBodyGyro-meanFreq()-Y 
        normalized and bounded within [-1,1]

fBodyGyro-meanFreq()-Z 
        normalized and bounded within [-1,1]

fBodyAccMag-mean() 
        normalized and bounded within [-1,1]

fBodyAccMag-std() 
        normalized and bounded within [-1,1]

fBodyAccMag-meanFreq() 
        normalized and bounded within [-1,1]

fBodyBodyAccJerkMag-mean() 
        normalized and bounded within [-1,1]

fBodyBodyAccJerkMag-std() 
        normalized and bounded within [-1,1]

fBodyBodyAccJerkMag-meanFreq() 
        normalized and bounded within [-1,1]

fBodyBodyGyroMag-mean() 
        normalized and bounded within [-1,1]

fBodyBodyGyroMag-std() 
        normalized and bounded within [-1,1]

fBodyBodyGyroMag-meanFreq() 
        normalized and bounded within [-1,1]

fBodyBodyGyroJerkMag-mean() 
        normalized and bounded within [-1,1]

fBodyBodyGyroJerkMag-std() 
        normalized and bounded within [-1,1]

fBodyBodyGyroJerkMag-meanFreq()
        normalized and bounded within [-1,1]