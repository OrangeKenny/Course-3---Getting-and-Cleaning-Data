#Source the dplyr package
library(dplyr)

##Set the working directory to local repository for this course
setwd("C:/Users/OrangeKenny/Documents/John Hopkins University Data Science Specialization/Projects/Course3_GettingAndCleaningData/Data/Course Project/UCI HAR Dataset")

##Navigate through the extracted folder to load contents into local data frame objects
features <- read.table("features.txt", quote="\"")
activity_labels <- read.table("activity_labels.txt", quote="\"")

X_train <- read.table("train/X_train.txt", quote="\"")
y_train <- read.table("train/y_train.txt", quote="\"")

X_test <- read.table("test/X_test.txt", quote="\"")
y_test <- read.table("test/y_test.txt", quote="\"")

subject_train <- read.table("train/subject_train.txt", quote="\"")
subject_test <- read.table("test/subject_test.txt", quote="\"")

##This script will perform the following to prepare the data for analysis:-
##1 - Merges the training and the test sets to create one data set.
##2 - Extracts only the measurements on the mean and standard deviation for each measurement.
##3 - Uses descriptive activity names to name the activities in the data set
##4 - Appropriately labels the data set with descriptive variable names.
##5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Rename the activity label columns
colnames(activity_labels)<- c("V1","Activity")   

##Prepare the Training Data
##prepare the y_train data
train<- cbind(y_train,subject_train)              ##join (full) two tables with the same number of observations
colnames(train)<- c("V1","Subject")               ##rename the columns to avoid confusion over same-name columns
train1<- merge(train,activity_labels, by=("V1"))  ##join (full) again with master table activity labels by V1

##prepare the x_train data
colnames(X_train)<- features[,2]  #rename all the column names of X_train using features table

##combine x_train and y train data
train2<- cbind(train1,X_train)    #join (full) two tables with the same number of obeservations
train3<- train2[,-1]              #remove first column to avoice duplicate column name error
                                  
##  select observations with the column matching subject, activity, mean or std
train4<- select(train3,contains("subject"), contains("Activity"), contains("mean"), contains("std"))



##Prepare the Test Data
##prepare the y_test data
test<- cbind(y_test,subject_test)               ##join (full) two tables with the same number of observations
colnames(test)<- c("V1","Subject")              ##rename the columns to avoid confusion over same-name columns
test1<- merge(test,activity_labels, by=("V1"))  ##join (full) again with master table activity labels by V1

##prepare the x_test data
colnames(X_test)<- features[,2]  #rename all the column names of X_test using features table

##combine x_test and y_test data
test2<- cbind(test1,X_test)    #join (full) two tables with the same number of obeservations
test3<- test2[,-1]             #remove first column to avoice duplicate column name error

##select observations with the column matching subject, activity, mean or std
test4<- select(test3,contains("Subject"), contains("Activity"), contains("mean"), contains("std"))

##Combining Train data with Test data
combined_data<- rbind(train4,test4)

##Summarize the combined data by subject and activity
prepared_data<- (combined_data%>%
                  group_by(Subject,Activity) %>%
                  summarise_each(funs(mean)))

##Output the prepared data into a new file
write.table(prepared_data,"./prepared_data.txt",sep=" ",row.name=FALSE) 
