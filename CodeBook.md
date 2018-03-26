# Human Activity Recognition Using Smartphones Data Set 
> Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
h
## Source:
> Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
> 1 - Smartlab - Non-Linear Complex Systems Laboratory
> DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
> 2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
> Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain

## Data Set Information:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

> Notes: 
> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.

> The Tidydata.csv Data Set contains the following variables:
> - Subject: A Factor with 30 levels ("1" to "30"). Which identifies the test subject who performed the activity during the experiment.  

> - Activity: A Factor with 6 levels ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING".), which identifies the activity performed by the subject.

- Average value for each subject and activity combination, of the variables on mean and standard deviation of calculated in the experiment. These 73 variables are:
  tBodyAcc-mean()-X
  tBodyAcc-mean()-Y
  tBodyAcc-mean()-Z
  tBodyAcc-std()-X
  tBodyAcc-std()-Y
  tBodyAcc-std()-Z
  tGravityAcc-mean()-X
  tGravityAcc-mean()-Y
  tGravityAcc-mean()-Z
  tGravityAcc-std()-X
  tGravityAcc-std()-Y
  tGravityAcc-std()-Z
  tBodyAccJerk-mean()-X
  tBodyAccJerk-mean()-Y
  tBodyAccJerk-mean()-Z
  tBodyAccJerk-std()-X
  tBodyAccJerk-std()-Y
  tBodyAccJerk-std()-Z
  tBodyGyro-mean()-X
  tBodyGyro-mean()-Y
  tBodyGyro-mean()-Z
  tBodyGyro-std()-X
  tBodyGyro-std()-Y
  tBodyGyro-std()-Z
  tBodyGyroJerk-mean()-X
  tBodyGyroJerk-mean()-Y
  tBodyGyroJerk-mean()-Z
  tBodyGyroJerk-std()-X
  tBodyGyroJerk-std()-Y
  tBodyGyroJerk-std()-Z
  tBodyAccMag-mean()
  tBodyAccMag-std()
  tGravityAccMag-mean()
  tGravityAccMag-std()
  tBodyAccJerkMag-mean()
  tBodyAccJerkMag-std()
  tBodyGyroMag-mean()
  tBodyGyroMag-std()
  tBodyGyroJerkMag-mean()
  tBodyGyroJerkMag-std()
  fBodyAcc-mean()-X
  fBodyAcc-mean()-Y
  fBodyAcc-mean()-Z
  fBodyAcc-std()-X
  fBodyAcc-std()-Y
  fBodyAcc-std()-Z
  fBodyAccJerk-mean()-X
  fBodyAccJerk-mean()-Y
  fBodyAccJerk-mean()-Z
  fBodyAccJerk-std()-X
  fBodyAccJerk-std()-Y
  fBodyAccJerk-std()-Z
  fBodyGyro-mean()-X
  fBodyGyro-mean()-Y
  fBodyGyro-mean()-Z
  fBodyGyro-std()-X
  fBodyGyro-std()-Y
  fBodyGyro-std()-Z
  fBodyAccMag-mean()
  fBodyAccMag-std()
  fBodyBodyAccJerkMag-mean()
  fBodyBodyAccJerkMag-std()
  fBodyBodyGyroMag-mean()
  fBodyBodyGyroMag-std()
  fBodyBodyGyroJerkMag-mean()
  fBodyBodyGyroJerkMag-std()

The tBodyAcc-XYZ and tGravityAcc-XYZ signals correspond to body and gravity acceleration signals, separeted from the accelerometer 3-axial raw signal tAcc-XYZ. The tBodyGyro-XYZ signal correspond to body gyroscope signals, from the gyroscope 3-axial raw signal tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

The tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ signals correspond to Jerk signals obtained by deriving in time the body linear acceleration and angular velocity.

The tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag and tBodyGyroJerkMag, correspond to the magnitude of the Jerk three-dimensional signals were calculated using the Euclidean norm.

The fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag and fBodyGyroJerkMag where calculated applying a Fast Fourier Transform (FFT). (Note the 'f' to indicate frequency domain signals). 
 
