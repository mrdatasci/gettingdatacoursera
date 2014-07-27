#################################################################################################### 

## Coursera Getting Data Course Project

# run_analysis.R file description

# This script will perform the following steps on the UCI HAR Dataset downloaded from  
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
# 1. Merge the training and the test sets to create one data set
# 2. Extract only the measurements on the mean and standard deviation for each measurement
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names
# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject

#################################################################################################### 

# load libraries
library(plyr)
library(rapport)
library(reshape2)

# Download UCI HAR dataset
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip", method = "curl")
dateDownloaded <- date()
unzip("./data/dataset.zip", exdir = "./data/")

# Step1: Merge training and test sets to create one data set

# Read in data from training files
Xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Create dfTrain by merging subjTrain, Ytrain, adn Xtrain data frames
idTrain <- 1:7352
dfSubjTrain <- cbind(id=idTrain, subjTrain)
dfYtrain <- cbind(id=idTrain, Ytrain)
dfXtrain <- cbind(id=idTrain, Xtrain)
dfList = list(dfSubjTrain,dfYtrain,dfXtrain)
dfTrain <- join_all(dfList, "id")

# Read in data from test files
Xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Create dfTest by merging subjTest, Ytest, and Xtest data frames
idTest <- 7353:10299
dfSubjTest <- cbind(id=idTest, subjTest)
dfYtest <- cbind(id=idTest, Ytest)
dfXtest <- cbind(id=idTest, Xtest)
dfList = list(dfSubjTest,dfYtest,dfXtest)
dfTest <- join_all(dfList, "id")

# Create tidyJoin data frame by merging dfTrain and dfTest
tidyJoin <- rbind(dfTrain, dfTest)
dim(tidyJoin)  ## check dimensions
# [1] 10299   564

# Assign column names to subject and activity columns
colnames(tidyJoin)[2] <- "subject"     ## subject id 1:30
colnames(tidyJoin)[3] <- "activity"    ## activity code 1:6

# Step2: Extract mean and std measure, create tidyMeasures data frame

# read in features file; identify mean and std columns; subset tidyJoin to tidyMeasures
features <-  read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, header = FALSE)
measures <- grep("mean\\(\\)|std\\(\\)", features[,2])
measures3 <- measures + 3  ## adjust for id, subject, and activity columns
tidyMeasures <- tidyJoin[, c(1:3, measures3)]

# Step3: Assign descriptive activity names; create tidyActivities data frame

# read in activities file; cleanup labels; create labels data frame and merge with larger data frame
activities <-  read.table("./data/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE, header = FALSE)
activityLabels <- tolower(activities$V2)  ## convert to lower case
activityLabels <- gsub("_", "", labels)  ## remove "_"
dfActivityLabels <- data.frame(activity = c(1:6), labels = activityLabels)
tidyActivities <- join(dfActivityLabels, tidyMeasures, "activity")
tidyActivities$activity <- NULL  ## remove old activity-code column
names(tidyActivities)[names(tidyActivities) == "labels"] <- "activity"  ## rename activity-label column
tidyActivities <- tidyActivities[, c(2,3,1, 4:69)]  ## reorder columns so that subject is first

# Step4: Label data set with descriptive variable names -> tidyColumns

# Identigy and cleanup feature names for mean and std variables
colNames <- features[measures, ]
colNames <- tocamel(colNames$V2)  ## convert to camelCase foe easy reading of long names
colNames <- gsub("^t", "time", colNames)  ## expand "t" to "time"
colNames <- gsub("^f", "freq", colNames)  ## expand "f" to frequency
colNames <- gsub("BodyBody", "Body", colNames)  ## remove duplicate "Body"

# Create tidyColumns data.frame
tidyColumns <- tidyActivities
colnames(tidyColumns) <- c("id", "subject", "activity", colNames)

# Step5: Create tidyData w/ average of ea variable for ea activity and ea subject

# Use aggregate() function to calculate means for each subject-activity combination
tidyMeans <- aggregate(tidyDataOne[3:68], by=list(tidyDataOne$subject, tidyDataOne$activity), FUN=mean, na.rm=TRUE)

# Fix first and second column names
names(tidyMeans)[names(tidyMeans) == "Group.1"] <- "subject"  ## rename column
names(tidyMeans)[names(tidyMeans) == "Group.2"] <- "activity"  ## rename column

# Export tidyData set 
write.table(tidyData, "./data/UCI HAR Dataset/tidyData.txt", row.names = FALSE, col.names = TRUE)
