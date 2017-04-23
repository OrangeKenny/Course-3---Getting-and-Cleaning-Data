# Code Book
This code book describes the data used in the Course Project of John Hopkins University Data Specialization Course 3.

### Overview of the data set received
The main folder named after UCI HAR Dataset has two (2) subfolders in within. The two (2) subfolders within the main folders are test and train respectively. There are four (4) files in the folder UCI HAR Dataset and three (3) in each of the test and train subfolders. There is also another subfolder called Inertial Signals inside each of the train and test folder. Each Inertial Singals folder contains nine (9) files. The following attempts to layout the folder structure in the provided data set for this course project.

                          UCI HAR Dataset (4 files)
                                |
          test (3 files)                      train (3 files) 
            |                                     |
      Inertial Signals (9 files)          Inertial Signals(9 files)

### Data files used for analysis
features.txt - This is a master file which lists all the names of 561 features of the observations.

activity_labels.txt - This is a master file which lists all the activities possibly performed by each subject.

subject_train.txt - This file contains 7352 observations each represents the volunteer ID for each of the 7352 observations in x_train.txt.

subject_test.txt - This file contains 2947 observations each represents the volunteer ID for each of the 2947 observations in the x_test.txt.

x_train.txt - This files contains the data for all the 7352 observations of 562 features under the train mode. 

y_train.txt - This file contains 7352 observations each represents the activity ID for each of the 7352 observations in x_train.txt. The activity ID is mapped to activity_label.txt master file. 

x_test.txt - This files contains the data for all the 2947 observations of the 562 features under the test mode.

y_test.txt - This file contains 2947 observations each represents the activity ID for each of the 2947 observations in x_test.txt. The activity ID is mapped to activity_label.txt master file.

### Data files NOT used for analysis
All files provided in the Inertial Signals folders are not used for analysis for this course project.

### Steps in cleaning the data files used for analysis. 
1. Rename all the features being measured in the transaction files i.e. x_train and x_test. This step will ensure all the observations in x_train and x_test are explained properly for each feature by referring to the master file features.txt.
2. Join the activity information with the transaction files i.e. x_train and x_test. This step will ensure all the observations in x_train and x_test are joined with one column representing the kind of activity which contributes to each observation. Specifically, x_train joins with y_train and x_test joins with y_test.
3. Join the definition of activity inforrmation for each observations in x_train and x_test. This is done by joining these observations with the master file activity_label with x_train and x_test.
4. Join the subject ID with the transaction files i.e. x_train and x_test. This step will esure all observations in x_train and x_test contains the information of which subject are the observations generated from. Specifically, x_train joins with subject_train while x_test joins with subject_test.
5. Select the transactions in x_tran and x_test for features with mean and std only.
6. Combine a master transaction by appending x_train and x_test which were prepared from step 1 to step 5.
7. Perform a summary by subject and activity to get 180 observations for 30 subjects with 6 activites each. 







                