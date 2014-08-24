CodeBook
==
Getting and Cleaning Data Course Project
--



Background on source data
--
According to the Readme provided with the source data (found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)):
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Transformations
--

- Combined test and training data
- Joined subject name, activity label, and measurement data
- Removed measurement data that did not match '-mean(' or '-std('
- Provided column headers using the original measurement names
- Aggregated the mean of each measurement field by Subject and Activity Label

The dataset includes the following variables:
--

- **Subject** - the ID of the Subject, corresponding to the IDs present in the source data files _subject-train.txt_ and _subject-test.txt_; are integers from 1 to 30
- **Activity_Label** - the activity that the subject was engaged in for the measurement; as determined by the second column in the _activity_labels.txt_ file, where the first column is equal to the values present in files _y_train.txt_ and _y_text.txt_
- **Aggregate Fields** - the mean of the labeled field, for a given **Subject** and **Activity_Label**. These retain the names from _X_train.txt_ and _X_test.txt_:
    - tBodyAcc-mean()-X
	- tBodyAcc-mean()-Y
	- tBodyAcc-mean()-Z
	- tBodyAcc-std()-X
	- tBodyAcc-std()-Y
	- tBodyAcc-std()-Z
	- tGravityAcc-mean()-X
	- tGravityAcc-mean()-Y
	- tGravityAcc-mean()-Z
	- tGravityAcc-std()-X
	- tGravityAcc-std()-Y
	- tGravityAcc-std()-Z
	- tBodyAccJerk-mean()-X
	- tBodyAccJerk-mean()-Y
	- tBodyAccJerk-mean()-Z
	- tBodyAccJerk-std()-X
	- tBodyAccJerk-std()-Y
	- tBodyAccJerk-std()-Z
	- tBodyGyro-mean()-X
	- tBodyGyro-mean()-Y
	- tBodyGyro-mean()-Z
	- tBodyGyro-std()-X
	- tBodyGyro-std()-Y
	- tBodyGyro-std()-Z
	- tBodyGyroJerk-mean()-X
	- tBodyGyroJerk-mean()-Y
	- tBodyGyroJerk-mean()-Z
	- tBodyGyroJerk-std()-X
	- tBodyGyroJerk-std()-Y
	- tBodyGyroJerk-std()-Z
	- tBodyAccMag-mean()
	- tBodyAccMag-std()
	- tGravityAccMag-mean()
	- tGravit	yAccMag-std()
	- tBodyAccJerkMag-mean()
	- tBodyAccJerkMag-std()
	- tBodyGyroMag-mean()
	- tBodyGyroMag-std()
	- tBodyGyroJerkMag-mean()
	- tBodyGyroJerkMag-std()
	- fBodyAcc-mean()-X
	- fBodyAcc-mean()-Y
	- fBodyAcc-mean()-Z
	- fBodyAcc-std()-X
	- fBodyAcc-std()-Y
	- fBodyAcc-std()-Z
	- fBodyAccJerk-mean()-X
	- fBodyAccJerk-mean()-Y
	- fBodyAccJerk-mean()-Z
	- fBodyAccJerk-std()-X
	- fBodyAccJerk-std()-Y
	- fBodyAccJerk-std()-Z
	- fBodyGyro-mean()-X
	- fBodyGyro-mean()-Y
	- fBodyGyro-mean()-Z
	- fBodyGyro-std()-X
	- fBodyGyro-std()-Y
	- fBodyGyro-std()-Z
	- fBodyAccMag-mean()
	- fBodyAccMag-std()
	- fBodyBodyAccJerkMag-mean()
	- fBodyBodyAccJerkMag-std()
	- fBodyBodyGyroMag-mean()
	- fBodyBodyGyroMag-std()
	- fBodyBodyGyroJerkMag-mean()
	- fBodyBodyGyroJerkMag-std()