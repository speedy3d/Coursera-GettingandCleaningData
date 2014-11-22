##This script will merge data from a number of data sets from "Human Activity Recognition" into one tidy dataset with averages for each variable

#Load required R libraries (data.table)
library(data.table)

#Sets destination path to data (must be created beforehand)
DestPath = "F:/My Documents/Coursera/Getting and Cleaning Data/Project"
setwd(DestPath)

#Download UCI datafile (method for Windows machines)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip", method = "auto")

#Unzips the downloaded data
unzip("data.zip")

#Read datasets into R
train_x <- read.table("UCI HAR Dataset/train/X_train.txt", sep="")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", sep="")
test_x <- read.table("UCI HAR Dataset/test/X_test.txt", sep="")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", sep="")

#Read subjects into R
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", sep="")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", sep="")

#Read features and activity labels into R
features <- read.table("UCI HAR Dataset/features.txt", sep="")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", sep="")

#Name the data columns for train_x and train_y
names(train_x) <- features
names(test_x) <- features

#Merge training and test data toghether
x_data_combined <- rbind(test_x, train_x)
y_data_combined <- rbind(test_y, train_y)
subjects_combined <- rbind(test_subject, train_subject)


#Correct the variable labels
colnames(x_data_combined) <- features[,2]
names(y_data_combined) <- c("ActivityNum")
names(subjects_combined) <- c("Subject")
names(activity_labels) <- c("ActivityNum", "Activity")

#Create a subset of the data that contains only the mean or standard deviation
num <- grep("mean\\(\\)|std\\(\\)", names(x_data_combined))
x_data_combined <- x_data_combined[,num]
                                   
#Merge all the data toghether
merged_data <- cbind(subjects_combined, y_data_combined, x_data_combined)

#Merge with activity Labels
merged_data_labeled <- merge(merged_data, activity_labels, by="ActivityNum", all.x=TRUE)
  
#Creates average of each variable for each activity and each subject and labels them with appropriate Average: tag
final <- merged_data_labeled[,c(ncol(merged_data_labeled),1:(ncol(merged_data_labeled)-1))][,-2]
activity_labels_names <- names(as.data.frame(final)[,c(3:68)])
final <- as.data.table(final)
answer <- final[,lapply(.SD, mean), by=list(Activity,Subject), .SDcols=c(activity_labels_names)][order(rank(Activity), Subject)]
names(answer)[names(answer) %in% c(activity_labels_names)] <- paste("Average: ",names(answer)[names(answer) %in% c(activity_labels_names)])
  
#Writes a table containing the tidy dataset
write.table(answer, file="Coursera_UCI_HAR_TidyData.txt", row.names=FALSE)
  
  
  
  
  
