Code Book
=======================================================
Data for tidy dataset is taken from Human Activity Recognition Using Smartphones Dataset.
This dataset was filtered by non-mean and non-std data.
In tidy dataset all filtered data was grouped by userId and taking action, so it contain 144 row for 24 people and 6 actions.
All data is normalized to [-1, 1] interval.
All except two last rows taken by (X/Y/Z coordinate)


* "id_person" - user id from 1 to 24 [Integer]
* "activity_code" - activity code from 1 to 6 [Integer]
* "activity_name" - activity type name [String]
* "tBodyAcc-mean()-X" - mean of triaxial acceleration from the accelerometer
* "tBodyAcc-mean()-Y" - mean of triaxial acceleration from the accelerometer
* "tBodyAcc-mean()-Z" - mean of triaxial acceleration from the accelerometer
* "tBodyAcc-std()-X" - std of triaxial acceleration from the accelerometer
* "tBodyAcc-std()-Y" - std of triaxial acceleration from the accelerometer
* "tBodyAcc-std()-Z" - std of triaxial acceleration from the accelerometer
* "tGravityAcc-mean()-X" - mean of triaxial acceleration from the accelerometer
* "tGravityAcc-mean()-Y" - mean of triaxial acceleration from the accelerometer
* "tGravityAcc-mean()-Z" - mean of triaxial acceleration from the accelerometer
* "tGravityAcc-std()-X" - std of triaxial acceleration from the accelerometer
* "tGravityAcc-std()-Y" - std of triaxial acceleration from the accelerometer
* "tGravityAcc-std()-Z" - std of triaxial acceleration from the accelerometer
* "tBodyAccJerk-mean()-X" - mean of triaxial acceleration from the accelerometer
* "tBodyAccJerk-mean()-Y" - mean of triaxial acceleration from the accelerometer
* "tBodyAccJerk-mean()-Z" - mean of triaxial acceleration from the accelerometer
* "tBodyAccJerk-std()-X" - std of triaxial acceleration from the accelerometer
* "tBodyAccJerk-std()-Y" - std of triaxial acceleration from the accelerometer
* "tBodyAccJerk-std()-Z" - std of triaxial acceleration from the accelerometer
* "tBodyGyro-mean()-X" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyro-mean()-Y" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyro-mean()-Z" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyro-std()-X" - std of triaxial angular velocity from the gyroscope
* "tBodyGyro-std()-Y" - std of triaxial angular velocity from the gyroscope
* "tBodyGyro-std()-Z" - std of triaxial angular velocity from the gyroscope
* "tBodyGyroJerk-mean()-X" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyroJerk-mean()-Y" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyroJerk-mean()-Z" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyroJerk-std()-X" - std of triaxial angular velocity from the gyroscope
* "tBodyGyroJerk-std()-Y" - std of triaxial angular velocity from the gyroscope
* "tBodyGyroJerk-std()-Z" - std of triaxial angular velocity from the gyroscope
* "tBodyAccMag-mean()" - mean of triaxial acceleration from the accelerometer
* "tBodyAccMag-std()" - std of triaxial acceleration from the accelerometer
* "tGravityAccMag-mean()" - mean of triaxial acceleration from the accelerometer
* "tGravityAccMag-std()" - std of triaxial acceleration from the accelerometer
* "tBodyAccJerkMag-mean()" - mean of triaxial acceleration from the accelerometer
* "tBodyAccJerkMag-std()" - std of triaxial acceleration from the accelerometer
* "tBodyGyroMag-mean()" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyroMag-std()" - std of triaxial angular velocity from the gyroscope
* "tBodyGyroJerkMag-mean()" - mean of triaxial angular velocity from the gyroscope
* "tBodyGyroJerkMag-std()" - std of triaxial angular velocity from the gyroscope
* "fBodyAcc-mean()-X" - mean of triaxial acceleration from the accelerometer
* "fBodyAcc-mean()-Y" - mean of triaxial acceleration from the accelerometer
* "fBodyAcc-mean()-Z" - mean of triaxial acceleration from the accelerometer
* "fBodyAcc-std()-X" - std of triaxial acceleration from the accelerometer
* "fBodyAcc-std()-Y" - std of triaxial acceleration from the accelerometer
* "fBodyAcc-std()-Z" - std of triaxial acceleration from the accelerometer
* "fBodyAcc-mean()-FreqX" - mean of triaxial acceleration from the accelerometer
* "fBodyAcc-mean()-FreqY" - mean of triaxial acceleration from the accelerometer
* "fBodyAcc-mean()-FreqZ" - mean of triaxial acceleration from the accelerometer
* "fBodyAccJerk-mean()-X" - mean of triaxial acceleration from the accelerometer
* "fBodyAccJerk-mean()-Y" - mean of triaxial acceleration from the accelerometer
* "fBodyAccJerk-mean()-Z" - mean of triaxial acceleration from the accelerometer
* "fBodyAccJerk-std()-X" - std of triaxial acceleration from the accelerometer
* "fBodyAccJerk-std()-Y" - std of triaxial acceleration from the accelerometer
* "fBodyAccJerk-std()-Z" - std of triaxial acceleration from the accelerometer
* "fBodyAccJerk-mean()-FreqX" - mean of triaxial acceleration from the accelerometer
* "fBodyAccJerk-mean()-FreqY" - mean of triaxial acceleration from the accelerometer
* "fBodyAccJerk-mean()-FreqZ" - mean of triaxial acceleration from the accelerometer
* "fBodyGyro-mean()-X" - mean of triaxial angular velocity from the gyroscope
* "fBodyGyro-mean()-Y" - mean of triaxial angular velocity from the gyroscope
* "fBodyGyro-mean()-Z" - mean of triaxial angular velocity from the gyroscope
* "fBodyGyro-std()-X" - std of triaxial angular velocity from the gyroscope
* "fBodyGyro-std()-Y" - std of triaxial angular velocity from the gyroscope
* "fBodyGyro-std()-Z" - std of triaxial angular velocity from the gyroscope
* "fBodyGyro-mean()-FreqX" - mean of triaxial angular velocity from the gyroscope
* "fBodyGyro-mean()-FreqY" - mean of triaxial angular velocity from the gyroscope
* "fBodyGyro-mean()-FreqZ" - mean of triaxial angular velocity from the gyroscope
* "fBodyAccMag-mean()" - mean of triaxial acceleration from the accelerometer
* "fBodyAccMag-std()" - std of triaxial acceleration from the accelerometer
* "fBodyAccMag-mean()-Freq" - mean of triaxial acceleration from the accelerometer
* "fBodyBodyAccJerkMag-mean()" - mean of triaxial acceleration from the accelerometer
* "fBodyBodyAccJerkMag-std()" - std of triaxial acceleration from the accelerometer
* "fBodyBodyAccJerkMag-mean()-Freq" - mean of triaxial acceleration from the accelerometer
* "fBodyBodyGyroMag-mean()" - mean of triaxial angular velocity from the gyroscope
* "fBodyBodyGyroMag-std()" - std of triaxial angular velocity from the gyroscope
* "fBodyBodyGyroMag-mean()-Freq" - mean of triaxial angular velocity from the gyroscope
* "fBodyBodyGyroJerkMag-mean()" - mean of triaxial angular velocity from the gyroscope
* "fBodyBodyGyroJerkMag-std()" - std of triaxial angular velocity from the gyroscope
* "fBodyBodyGyroJerkMag-mean()-Freq" - mean of triaxial angular velocity from the gyroscope

