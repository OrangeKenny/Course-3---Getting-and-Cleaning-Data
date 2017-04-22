# Course Project
This course project ("project") is part of John Hopkins University Data Science Specialization Course 3 via Coursera (Online).

###Instructions of the project

The purpose of this project is to demonstrate the students' ability to collect, work with, and clean a data set.

The students were given the URL to the raw data set ("raw data set") for the project at the following [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

In this project the students are to create one (1) R script ("script") called run_analysis.R that will perform the following:-

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set ("prepared data set") with the average of each variable for each activity and each subject.

###Deliverables of the project
The project requires three (3) documents which can be found on this repository. These files are:-

1. README.md - The readme which provides the high level overview of approach to answering the questions for the project.
2. CodeBook.md - The code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
3. run_analysis.R - The working R script to prepare the raw data set as described in the project instructions. 

###Steps to run the created R script for the project
In addition to reading this README.md and the other CodeBook.md, the reviewer of this project needs to run the script created for the project called run_analysis.R agaisnt the provided raw data set. In order to run the script, the following steps must be followed in order:-

1. Download the raw data set in zipped file provided for the project.
2. Extract the raw data set downloaded.
3. Once extracted, maintain the whole origianl folder structure. 
4. Download the script and modify the 5th line to set the correct working directory where you extract the raw data set.
5. Run the script.
6. Observe the output of the script in a file called prepared_data.txt inside the extracted raw data set folder.