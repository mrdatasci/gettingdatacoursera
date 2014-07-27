tidyDataReadme

Background:
The Human Activity Recognition (HAR) database contains recordings of 30 subjects performing activities of daily living while wearing a waist-mounted smartphone embedded with inertial sensors. Experiments were performed with 30 volunteers, age 19-48 years. Each individual performed six activities (walking, walkingupstairs, walkingdownstairs, sitting, standing, laying) wearing a Samsung smartphone on the waist. Embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity measurements. Data set was randomly assigned to two groups: 70% (21 individuals) to training data and 30% (9 individuals) to test data. The original data set contained 561 features (measurements) with time and frequency domains.

HAR Data Files:
- train/X_train.txt: training data set (one measurement per row)
- train/y_train.txt: training activity codes, range 1:6
- train/subject_train.txt: identifies subject performing the activity, range 1:30
- test/X_test.txt: test data set (one measurement per row)
- test/y_test.txt: test activity codes, range 1:6
- test/subject_train.txt: identifies subject performing the activity, range 1:30
- activity_labels.txt: activity code numbers and names
- features.txt: list of all 561 measurements

HAR Variables:
As described in the original publication (Anguita et al., 2012), the features (measurements) in this database are from 3-axial accelerometer and gyroscope signals, tAcc-XYZ and tGyro-XYZ. Acceleration signals were separated into body and gravity acceleration signals: tBodyAcc-XYZ and tGravityAcc-XYZ. 
Subsequently, body linear acceleration and angular velocity were derived to obtain Jerk signals: tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ; and the magnitude of these signals were calculated: tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag. 
Finally, Fast Fourier Transform (FFT) was applied to produce frequency domain signals: fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
Note: '-XYZ' denotes axial signals in the X, Y and Z directions (3 separate measurements). 
Note: Measurements are normalized and bounded within [-1,1].

33 signals were measured:
- timeBodyAcc-XYZ
- timeGravityAcc-XYZ
- timeBodyAccJerk-XYZ
- timeBodyGyro-XYZ
- timeBodyGyroJerk-XYZ
- timeBodyAccMag
- timeGravityAccMag
- timeBodyAccJerkMag
- timeBodyGyroMag
- timeBodyGyroJerkMag
- freqBodyAcc-XYZ
- freqBodyAccJerk-XYZ
- freqBodyGyro-XYZ
- freqBodyAccMag
- freqBodyAccJerkMag
- freqBodyGyroMag
- freqBodyGyroJerkMag

Using these signals, investigators estimated 17 variable sets (mean, standard deviation, median absolute deviation, maximum value, minimum value, signal magnitude area, energy, interquartile range,  entropy, autoregression coefficients, correlation coefficient, maximum index, meanFreq, skewness, kurtosis, bands energy, angle) for a total of 561 variables.

tidyData Project Overview:
Uses the UCI HAR Dataset to create an R script that does the following: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- Merges the training and test data sets to create one data set 
- Extracts measurements on the mean and standard deviation for each measurement
- Uses descriptive activity names to name the activities in the data set 
- Appropriately labels the data set with descriptive activity names 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject 

This course project looks at the mean and standard deviation (std) estimates for each of the 33 signals (66 variables) and then calculates the average of each variable for each subject and each activity (180 subject-activity combinations).

tidyData Data Set:
- Each variable forms a column (66 measurements, subject number, activity level)
- Each observation forms a row (180 subject-activity combinations)
- Each type of observational unit (mean calculation) forms a table
- Final tidyData set is 180 x 68 data frame 
  * 180 rows: subject-activity observations
  * 68 columns: subject, activity, 33 mean variables, 33 std variables

In order to make the data more readable, descriptive variable names were added and descriptive activities substituted for the activity number codes. [Note: camelCase used, instead of all lower case, to make the long column names more readable.]

tidyData Submissions:
- tidyData.txt file (uploaded on Coursera)
- R script for performing the analysis (posted on GitHub) 
- CodeBook.md describing variables, data, and data cleanup (posted on GitHub)
- README.md repo explaining how the script works (posted on GitHub)

Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
