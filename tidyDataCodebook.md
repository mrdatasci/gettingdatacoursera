tidyDataCodeBook

subject (character)
- 30 volunteers, 19-48 years, randomly assigned: 70% training and 30% test groups
- character, range: 1 to 30

activity (factor, with six levels)
- subjects performed 6 activities while wearing a sensor-embedded smartphone
- 1 walking
- 2 walkingupstairs
- 3 walkingdownstairs
- 4 sitting
- 5 standing
- 6 laying  

mean variables (numeric)
- timeBodyAccMeanX: body acceleration, x-axis, time domain, mean
- timeBodyAccMeanY: body acceleration, y-axis, time domain, mean
- timeBodyAccMeanZ: body acceleration, z-axis, time domain, mean
- timeGravityAccMeanX: gravity acceleration, x-axis, time domain, mean
- timeGravityAccMeanY: gravity acceleration, y-axis, time domain, mean
- timeGravityAccMeanZ: gravity acceleration, z-axis, time domain, mean
- timeBodyAccJerkMeanX: body acceleration jerk, x-axis, time domain, mean
- timeBodyAccJerkMeanY: body acceleration jerk, y-axis, time domain, mean
- timeBodyAccJerkMeanZ: body acceleration jerk, z-axis, time domain, mean
- timeBodyGyroMeanX: body gyro, x-axis, time domain, mean
- timeBodyGyroMeanY: body gyro, y-axis, time domain, mean
- timeBodyGyroMeanZ: body gyro, z-axis, time domain, mean
- timeBodyGyroJerkMeanX: body gyro jerk, x-axis, time domain, mean
- timeBodyGyroJerkMeanY: body gyro jerk, y-axis, time domain, mean
- timeBodyGyroJerkMeanZ: body gyro jerk, z-axis, time domain, mean
- timeBodyAccMagMean: body acceleration magnitude, time domain, mean
- timeGravityAccMagMean: gravity acceleration magnitude, time domain, mean
- timeBodyAccJerkMagMean: body acceleration jerk magnitude, time domain, mean
- timeBodyGyroMagMean: body gyro magnitude, time domain, mean
- timeBodyGyroJerkMagMean: body gyro jerk magnitude, time domain, mean
- freqBodyAccMeanX: body acceleration, x-axis, frequency domain, mean
- freqBodyAccMeanY: body acceleration, y-axis, frequency domain, mean
- freqBodyAccMeanZ: body acceleration, z-axis, frequency domain, mean
- freqBodyAccJerkMeanX: body acceleration jerk, x-axis, frequency domain, mean
- freqBodyAccJerkMeanY: body acceleration jerk, y-axis, frequency domain, mean
- freqBodyAccJerkMeanZ: body acceleration jerk, z-axis, frequency domain, mean
- freqBodyGyroMeanX: body gyro, x-axis, frequency domain, mean
- freqBodyGyroMeanY: body gyro, y-axis, frequency domain, mean
- freqBodyGyroMeanZ: body gyro, z-axis, frequency domain, mean
- freqBodyAccMagMean: body acceleration magnitude, frequency domain, mean
- freqBodyAccJerkMagMean: body acceleration jerk magnitude, frequency domain, mean
- freqBodyGyroMagMean: body gyro magnitude, frequency domain, mean
- freqBodyGyroJerkMagMean: body gyro jerk magnitude, frequency domain, mean
	
standard deviation (std) variables (mumeric)
	timeBodyAccStdX:  body acceleration, x-axis, time domain, std
	timeBodyAccStdY:  body acceleration, y-axis, time domain, std
	timeBodyAccStdZ:  body acceleration, z-axis, time domain, std
	timeGravityAccStdX: gravity acceleration, x-axis, time domain, std
	timeGravityAccStdY: gravity acceleration, y-axis, time domain, std
	timeGravityAccStdZ: gravity acceleration, z-axis, time domain, std
	timeBodyAccJerkStdX: body acceleration jerk, x-axis, time domain, std
	timeBodyAccJerkStdY: body acceleration jerk, y-axis, time domain, std
	timeBodyAccJerkStdZ: body acceleration jerk, z-axis, time domain, std
	timeBodyGyroStdX: body gyro, x-axis, time domain, std
	timeBodyGyroStdY: body gyro, y-axis, time domain, std
	timeBodyGyroStdZ: body gyro, z-axis, time domain, std
	timeBodyGyroJerkStdX: body gyro jerk, x-axis, time domain, std
	timeBodyGyroJerkStdY: body gyro jerk, y-axis, time domain, std
	timeBodyGyroJerkStdZ: body gyro jerk, z-axis, time domain, std
	timeBodyAccMagStd: body acceleration magnitude, time domain, std
	timeGravityAccMagStd: gravity acceleration magnitude, time domain, std
	timeBodyAccJerkMagStd: body acceleration jerk magnitude, time domain, std
	timeBodyGyroMagStd: body gyro magnitude, time domain, std
	timeBodyGyroJerkMagStd: body gyro jerk magnitude, time domain, std
	freqBodyAccStdX: body acceleration, x-axis, frequency domain, std
	freqBodyAccStdY: body acceleration, y-axis, frequency domain, std
	freqBodyAccStdZ: body acceleration, z-axis, frequency domain, std
	freqBodyAccJerkStdX: body acceleration jerk, x-axis, frequency domain, std
	freqBodyAccJerkStdY: body acceleration jerk, y-axis, frequency domain, std
	freqBodyAccJerkStdZ: body acceleration jerk, z-axis, frequency domain, std
	freqBodyGyroStdX: body gyro, x-axis, frequency domain, std
	freqBodyGyroStdY: body gyro, y-axis, frequency domain, std
	freqBodyGyroStdZ: body gyro, z-axis, frequency domain, std
	freqBodyAccMagStd: body acceleration magnitude, frequency domain, std
	freqBodyAccJerkMagStd: body acceleration jerk magnitude, frequency domain, std
	freqBodyGyroMagStd: body gyro magnitude, frequency domain, mean
	freqBodyGyroJerkMagStd: body gyro jerk magnitude, frequency domain, mean


Note: all features (measurements) normalized and bounded within [-1,1]

Reference
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
