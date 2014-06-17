# Getting and Cleaning Data - Peer Assessment Project  - Code Book

## Introduction
The output of this data celaning project consists of two tidy datasets: 
* **tidy_data_1.txt** 
* **tidy_data_2.txt** 

The components implementing the data cleaning process are documented in the accompanying **README.md** file.

The following sections detail the original source data and the two tidy datasets gernerated from it.

## Original Source Data
The original source data were downloaded from  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on June 16th, 2014.
### Original read.me file
> Human Activity Recognition Using Smartphones Dataset
> Version 1.0
> ==================================================================
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
> Smartlab - Non Linear Complex Systems Laboratory
> DITEN - Università degli Studi di Genova.
> Via Opera Pia 11A, I-16145, Genoa, Italy.
> activityrecognition@smartlab.ws
> www.smartlab.ws
> ==================================================================
> 
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
> 
> For each record it is provided:
> ======================================
> 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.
> 
> The dataset includes the following files:
> =========================================
> 
> - 'README.txt'
> 
> - 'features_info.txt': Shows information about the variables used on the feature vector.
> 
> - 'features.txt': List of all features.
> 
> - 'activity_labels.txt': Links the class labels with their activity name.
> 
> - 'train/X_train.txt': Training set.
> 
> - 'train/y_train.txt': Training labels.
> 
> - 'test/X_test.txt': Test set.
> 
> - 'test/y_test.txt': Test labels.
> 
> The following files are available for the train and test data. Their descriptions are equivalent. 
> 
> - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
> 
> - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
> 
> - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
> 
> - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
> 
> Notes: 
> ======
> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.
> 
> For more information about this dataset contact: activityrecognition@smartlab.ws
> 
> License:
> ========
> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
> 
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
> 
> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
> 
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
 

### Original Dataset Feature Descriptions
From **features_info.txt**: 
> Feature Selection 
> =================
> 
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> 
> tBodyAcc-XYZ
> tGravityAcc-XYZ
> tBodyAccJerk-XYZ
> tBodyGyro-XYZ
> tBodyGyroJerk-XYZ
> tBodyAccMag
> tGravityAccMag
> tBodyAccJerkMag
> tBodyGyroMag
> tBodyGyroJerkMag
> fBodyAcc-XYZ
> fBodyAccJerk-XYZ
> fBodyGyro-XYZ
> fBodyAccMag
> fBodyAccJerkMag
> fBodyGyroMag
> fBodyGyroJerkMag
> 
> The set of variables that were estimated from these signals are: 
> 
> mean(): Mean value
> std(): Standard deviation
> mad(): Median absolute deviation 
> max(): Largest value in array
> min(): Smallest value in array
> sma(): Signal magnitude area
> energy(): Energy measure. Sum of the squares divided by the number of values. 
> iqr(): Interquartile range 
> entropy(): Signal entropy
> arCoeff(): Autorregresion coefficients with Burg order equal to 4
> correlation(): correlation coefficient between two signals
> maxInds(): index of the frequency component with largest magnitude
> meanFreq(): Weighted average of the frequency components to obtain a mean frequency
> skewness(): skewness of the frequency domain signal 
> kurtosis(): kurtosis of the frequency domain signal 
> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
> angle(): Angle between to vectors.
> 
> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
> 
> gravityMean
> tBodyAccMean
> tBodyAccJerkMean
> tBodyGyroMean
> tBodyGyroJerkMean

## tidy_data_1.txt
The specified requirements for this data set were:

1. To create a single data set merging the original training and the test sets.  
2. To include only the measurements on the mean and standard deviation for each measurement.   
3. To uses descriptive activity names to name the activities in the data set  
4. To label the data set appropriately with descriptive variable names. 

This data set was generated on June 16th, 2014, by running the script in the accompanying **run_analysis.R** file in R version 3.0.3.
### Transformations
The following transformations were applied to the original data set:
#### Merged Training and Test Data Sets
The contents fo the following original files were concatenated together:
* **X**: Measurements for each observation: train/X_train.txt and test/X_test.txt
* **y**: The activity code for each observation: train/y_train.txt and test/y_test.txt
* **subject** The subjects perfoming each observed activity: train/subject_train.txt and train/subject_train.txt

#### Descriptive Measurement Names  
Discriptive measurement names were added to the main data set **X**
These were based on the original labels provided  in activity_labels.txt.
The following transformations were applied:
 * removing "()" to avoid possible confusion with function calls
 * replacing "-" with "." to avoid possible confusion with subtraction
 * converting camel case to underscore, for ease of reading (e.g. fBodyBodyGyroJerkMag.std Vs f_body_body_gyro_jerk_mag.std)
 * replacing  the leading "t_" with "time."
 * replacing the leading "f_" with "freq."
The resulting measurement names are detailed in the **Measurement List** section below.
  
#### Descriptive Activity Values 
A new column, **activity**, with descritive activity values corresponsing to the activity codes in **y**  was added to the main data set **X**.
The values used were taken form the original dataset file activity_labels.txt. These labels were fit for purpose with out any additional transformation.

#### Filtered Measurements
The main data set **X** was filtered to remove all measurements that did not have either "-std()" or "-mean() in their original names, as specified in features.txt. 
 
### Measurement List

## tidy_data_2.txt  
This dataset is a further summarisation of  **tidy_data_1.txt**.  
The specified requirement was to create a second, independent tidy data set with the average of each variable for each activity and each subject.
This data set was generated on June 16th, 2014, by running the script in the accompanying **run_analysis.R** file in R version 3.0.3.
### Transformations
### Measurement list