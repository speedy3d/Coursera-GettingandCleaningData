#Codebook for Coursera_UCI_HAR_TidyData.txt

##Data Source

The original source for this data was the "Human Activity Recognition Using Smartphones Dataset Version 1.0" which can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Original Code Book (Slightly Modified)

A comprehensive description about the original dataset can be found in the ReadMe and features_info files. Below is a modified description of the original dataset which includes information related to transformation and creation of the new tidy dataset:

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

The set of variables that were estimated from these signals (and retained for this assignment) are the following:

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

##Code Book for Tidy Dataset (result of run_analysis.R)

All variables contain the following standard pattern:

[Label]: [variable]-[statistic]-[vector] <br>

Each element is defined as follows:

1) [Label] All columns begin with the Label "Average: " indicating the statistic that was applied to the data. The only exception are the first two columns which contain the activity performend (e.g. Laying), and the subject.<br>
2) [variable] please refer to the original code book for information related to the variable (e.g. tBodyAcc) <br>
3) [statistic] - statistic applied to the variable, either mean or standard deviation <br>
4) [vector] - the vector in the x,y,z plane that the column represents <br>

Below is a completed list of variables in the new dataset:

"Activity" "Subject" "Average:  tBodyAcc-mean()-X" "Average:  tBodyAcc-mean()-Y" "Average:  tBodyAcc-mean()-Z" "Average:  tBodyAcc-std()-X" "Average:  tBodyAcc-std()-Y" "Average:  tBodyAcc-std()-Z" "Average:  tGravityAcc-mean()-X" "Average:  tGravityAcc-mean()-Y" "Average:  tGravityAcc-mean()-Z" "Average:  tGravityAcc-std()-X" "Average:  tGravityAcc-std()-Y" "Average:  tGravityAcc-std()-Z" "Average:  tBodyAccJerk-mean()-X" "Average:  tBodyAccJerk-mean()-Y" "Average:  tBodyAccJerk-mean()-Z" "Average:  tBodyAccJerk-std()-X" "Average:  tBodyAccJerk-std()-Y" "Average:  tBodyAccJerk-std()-Z" "Average:  tBodyGyro-mean()-X" "Average:  tBodyGyro-mean()-Y" "Average:  tBodyGyro-mean()-Z" "Average:  tBodyGyro-std()-X" "Average:  tBodyGyro-std()-Y" "Average:  tBodyGyro-std()-Z" "Average:  tBodyGyroJerk-mean()-X" "Average:  tBodyGyroJerk-mean()-Y" "Average:  tBodyGyroJerk-mean()-Z" "Average:  tBodyGyroJerk-std()-X" "Average:  tBodyGyroJerk-std()-Y" "Average:  tBodyGyroJerk-std()-Z" "Average:  tBodyAccMag-mean()" "Average:  tBodyAccMag-std()" "Average:  tGravityAccMag-mean()" "Average:  tGravityAccMag-std()" "Average:  tBodyAccJerkMag-mean()" "Average:  tBodyAccJerkMag-std()" "Average:  tBodyGyroMag-mean()" "Average:  tBodyGyroMag-std()" "Average:  tBodyGyroJerkMag-mean()" "Average:  tBodyGyroJerkMag-std()" "Average:  fBodyAcc-mean()-X" "Average:  fBodyAcc-mean()-Y" "Average:  fBodyAcc-mean()-Z" "Average:  fBodyAcc-std()-X" "Average:  fBodyAcc-std()-Y" "Average:  fBodyAcc-std()-Z" "Average:  fBodyAccJerk-mean()-X" "Average:  fBodyAccJerk-mean()-Y" "Average:  fBodyAccJerk-mean()-Z" "Average:  fBodyAccJerk-std()-X" "Average:  fBodyAccJerk-std()-Y" "Average:  fBodyAccJerk-std()-Z" "Average:  fBodyGyro-mean()-X" "Average:  fBodyGyro-mean()-Y" "Average:  fBodyGyro-mean()-Z" "Average:  fBodyGyro-std()-X" "Average:  fBodyGyro-std()-Y" "Average:  fBodyGyro-std()-Z" "Average:  fBodyAccMag-mean()" "Average:  fBodyAccMag-std()" "Average:  fBodyBodyAccJerkMag-mean()" "Average:  fBodyBodyAccJerkMag-std()" "Average:  fBodyBodyGyroMag-mean()" "Average:  fBodyBodyGyroMag-std()" "Average:  fBodyBodyGyroJerkMag-mean()" "Average:  fBodyBodyGyroJerkMag-std()"

##Citation

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones