# Getting and Cleaning Data - Peer Assessment Project


## Introduction

This is the peer assessment project for the  "Getting and Cleaning Data" course.

The components of this project are:
* README.md - this file
* CodeBook.md - a code book describesing the data, its variables any transformations that were performed to clean up the data.
* run_analysis.R - An R script file containing all functions that were used to clean the data set. This is described in more detail below
 
## run_analysis.R

### Instructions for running the data cleaning script
1. _Set the appropriate working directory_   
The data cleaning functions in run_analysis.R assume that the UCI HAR dataset has already been downloaded and unzipped into the current working directory, appearing as a sub-directory called 'UCI HAR Dataset'.  
If this is not the case then the **download_dataset()** function may be called. This function:
    * downloads the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip,
    * unzips into a timestamped directory under the current working directory (e.g. "UCI_HAR_Dataset__2014-06-16") and 
    * makes this new directory the current working directory.  - The unzipped 'UCI HAR Dataset' directory is now within the current working directory and data cleaning functions can now be run.  

2. _Run the data cleaning functions_  
The main entry point for the data cleaning script is the function **clean_data()** which implelements the end-to-end process specified  for the project:
> You should create one R script called run_analysis.R that does the following.   
> 1. Merges the training and the test sets to create one data set.  
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.   
> 3. Uses descriptive activity names to name the activities in the data set  
> 4. Appropriately labels the data set with descriptive variable names.   
> 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject  

  **clean_data()** takes no parameters and creates two files in the current working directory:
    * **tidy_data_1.txt** - the output of steps 1-4 above
    * **tidy_data_2.txt** - the output of step 5 above
    
### Overview of the implementation of clean_data()
**clean_data()** performs the following steps:

1. Merge the various components of the training and test datasets  
this is performed by 3 sub functions:  
    * **merge_features()** - reads "UCI HAR Dataset/train/X_train.txt" and "UCI HAR Dataset/test/X_test.txt", and concatenates them into a single dataframe which is returned to the calling function.  
    * **merge_activities()** - reads "UCI HAR Dataset/train/y_train.txt" and "UCI HAR Dataset/test/y_test.txt", and concatenates them into a single dataframe which is returned to the calling function.  
    * **merge_subjects()** - reads "UCI HAR Dataset/train/subject_train.txt" and "UCI HAR Dataset/test/subject_test.txt", and concatenates them into a single dataframe which is returned to the calling function.

2. Filter for just the features we're interested in (averages and standard deviations)  
This is done by the function **select_features()**, which:
    * reads in in the complete set of original feature names and column numbers from "UCI HAR Dataset/features.txt"
    * identifies which feature labels contain either "-std()" OR "-mean()
    * returns a dataframe with two columns: V1 - the index of a features in the original dataset; V2 - the corresponsing feature label from the original dataset. This data frame has one row for each of the features identified in the previous step.  

3. **clean _data()** uses the first column of this returned dataframe subset the dataframe returned previously by **merge_features()**, retaining just the required features.

4. Create descriptive feature names, cleaned versions of the UCI HAR feature labels, and add them to our filtered data frame  
**clean _data()** calls **modify_feature_names()** to do this, passing the dataframe previously returned by **select_features()**. The new feature names are based on the original ones in "UCI HAR Dataset/features.txt", but **modify_feature_names()** modifies them to facilitate their usage for analysis within R, by:  
    * removing "()" to avoid possible confusion with fucntion calls
    * replacing "-" with "." to avoid possible confusion with subtraction
    * converting camel case to underscore, for ease of reading (e.g. fBodyBodyGyroJerkMag_std Vs f_body_body_gyro_jerk_mag_std)
    * replacing  the leading "t_" with "time."
     * replacing the leading "f_" with "freq."
    * adding a column (**$new_names**) with these modified names to the dataframe provided as input, and returning it to the calling function.

5. **clean _data()** then takes the new column from the dataframe returned by **modify_feature_names()** new column and uses it to populate the column names of the previously filtered and merged merged data set

6. Add an 'activity' column containing a descriptive activity name for each measurement.  
The original UCI HAR activity labels are fit for purpose as they are.  
**clean_data()** does this by calling **create_activity_column()**, passing the data frame returned by **merge_activities()** in step 1 above.  
**create_activity_column()**:
    * reads the  original UCI HAR activity labels from "UCI HAR Dataset/activity_labels.txt"
    * looks up the activity value in each row of the merged activity dataframe (which was pased as a parameter) and gets the corrresponsing activity label
    * returns a character vector with the corresponding activity label for each row of the merged dataset

7. **clean _data()** then adds this returned vector filtered and merged data set as a new column called **$activity**

8. Add a 'subject_id' column identifying the subject who performed the activity for each  measurement.  
**clean_data()** does this simply by adding the first column of the dataframe returned by **merge_subjects()** in step 1 to the filtered and merged data set. the new column name is **$subject_id**

9. Write out the first tidy dataset  
**clean _data()** uses  write.table() to writes this out to a file called "tidy_data_1.txt" in the current working directory.

10. Create the second tidy dataset  
**clean _data()** calls **create_summary_dataframe()**, passing the data frame containing the first tidy dataset.  
**create_summary_dataframe()** uses the **plyr** package to create a new data frame with the average of each column, except $activity, grouped by $subject_id. It then modifies the column names of this new dataframe, except $subject_id, prefixing the original names with "average." Finally it returns the new data frame to the calling function.

11. Create write out the second tidy dataset  
**clean _data()** uses  write.table() to writes this out to a file called "tidy_data_2.txt" in the current working directory.
