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
* **subject** The subjects perfoming each observed activity: train/subject_train.txt and test/subject_test.txt

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
The main data set **X** was filtered to remove all measurements that did not have either "-std()" or "-mean()"" in their original names specified in features.txt. 
 
#### Added Subject Column
A new column, **subject_id**, was added to the main data set **X**. It's values were populated from the merged **subject**  dataset (train/subject_train.txt and test/subject_test.txt).
 
### Measurement List
The transformed dataset **X** was output as a tab separated file **tidy_data_1.txt**.
It contains a header row and 12099 data rows,  with 68 columns:

| Order | Measure Name in tidy_data_1.txt |  Description | Units / Values |
| ----- | --------------------------------------- | --------------------------- | --- |
| 1   |                   time.body_acc.mean.x  |           From original dataset: tBodyAcc-mean()-X <br>Original index:   1 |     |
| 2   |                   time.body_acc.mean.y  |           From original dataset: tBodyAcc-mean()-Y <br>Original index:   2 |     |
| 3   |                   time.body_acc.mean.z  |           From original dataset: tBodyAcc-mean()-Z <br>Original index:   3 |     |
| 4   |                    time.body_acc.std.x  |            From original dataset: tBodyAcc-std()-X <br>Original index:   4 |     |
| 5   |                    time.body_acc.std.y  |            From original dataset: tBodyAcc-std()-Y <br>Original index:   5 |     |
| 6   |                    time.body_acc.std.z  |            From original dataset: tBodyAcc-std()-Z <br>Original index:   6 |     |
| 7   |                time.gravity_acc.mean.x  |        From original dataset: tGravityAcc-mean()-X <br>Original index:  41 |     |
| 8   |                time.gravity_acc.mean.y  |        From original dataset: tGravityAcc-mean()-Y <br>Original index:  42 |     |
| 9   |                time.gravity_acc.mean.z  |        From original dataset: tGravityAcc-mean()-Z <br>Original index:  43 |     |
| 10   |                 time.gravity_acc.std.x  |         From original dataset: tGravityAcc-std()-X <br>Original index:  44 |     |
| 11   |                 time.gravity_acc.std.y  |         From original dataset: tGravityAcc-std()-Y <br>Original index:  45 |     |
| 12   |                 time.gravity_acc.std.z  |         From original dataset: tGravityAcc-std()-Z <br>Original index:  46 |     |
| 13   |              time.body_acc_jerk.mean.x  |       From original dataset: tBodyAccJerk-mean()-X <br>Original index:  81 |     |
| 14   |              time.body_acc_jerk.mean.y  |       From original dataset: tBodyAccJerk-mean()-Y <br>Original index:  82 |     |
| 15   |              time.body_acc_jerk.mean.z  |       From original dataset: tBodyAccJerk-mean()-Z <br>Original index:  83 |     |
| 16   |               time.body_acc_jerk.std.x  |        From original dataset: tBodyAccJerk-std()-X <br>Original index:  84 |     |
| 17   |               time.body_acc_jerk.std.y  |        From original dataset: tBodyAccJerk-std()-Y <br>Original index:  85 |     |
| 18   |               time.body_acc_jerk.std.z  |        From original dataset: tBodyAccJerk-std()-Z <br>Original index:  86 |     |
| 19   |                  time.body_gyro.mean.x  |          From original dataset: tBodyGyro-mean()-X <br>Original index: 121 |     |
| 20   |                  time.body_gyro.mean.y  |          From original dataset: tBodyGyro-mean()-Y <br>Original index: 122 |     |
| 21   |                  time.body_gyro.mean.z  |          From original dataset: tBodyGyro-mean()-Z <br>Original index: 123 |     |
| 22   |                   time.body_gyro.std.x  |           From original dataset: tBodyGyro-std()-X <br>Original index: 124 |     |
| 23   |                   time.body_gyro.std.y  |           From original dataset: tBodyGyro-std()-Y <br>Original index: 125 |     |
| 24   |                   time.body_gyro.std.z  |           From original dataset: tBodyGyro-std()-Z <br>Original index: 126 |     |
| 25   |             time.body_gyro_jerk.mean.x  |      From original dataset: tBodyGyroJerk-mean()-X <br>Original index: 161 |     |
| 26   |             time.body_gyro_jerk.mean.y  |      From original dataset: tBodyGyroJerk-mean()-Y <br>Original index: 162 |     |
| 27   |             time.body_gyro_jerk.mean.z  |      From original dataset: tBodyGyroJerk-mean()-Z <br>Original index: 163 |     |
| 28   |              time.body_gyro_jerk.std.x  |       From original dataset: tBodyGyroJerk-std()-X <br>Original index: 164 |     |
| 29   |              time.body_gyro_jerk.std.y  |       From original dataset: tBodyGyroJerk-std()-Y <br>Original index: 165 |     |
| 30   |              time.body_gyro_jerk.std.z  |       From original dataset: tBodyGyroJerk-std()-Z <br>Original index: 166 |     |
| 31   |                 time.body_acc_mag.mean  |          From original dataset: tBodyAccMag-mean() <br>Original index: 201 |     |
| 32   |                  time.body_acc_mag.std  |           From original dataset: tBodyAccMag-std() <br>Original index: 202 |     |
| 33   |              time.gravity_acc_mag.mean  |       From original dataset: tGravityAccMag-mean() <br>Original index: 214 |     |
| 34   |               time.gravity_acc_mag.std  |        From original dataset: tGravityAccMag-std() <br>Original index: 215 |     |
| 35   |            time.body_acc_jerk_mag.mean  |      From original dataset: tBodyAccJerkMag-mean() <br>Original index: 227 |     |
| 36   |             time.body_acc_jerk_mag.std  |       From original dataset: tBodyAccJerkMag-std() <br>Original index: 228 |     |
| 37   |                time.body_gyro_mag.mean  |         From original dataset: tBodyGyroMag-mean() <br>Original index: 240 |     |
| 38   |                 time.body_gyro_mag.std  |          From original dataset: tBodyGyroMag-std() <br>Original index: 241 |     |
| 39   |           time.body_gyro_jerk_mag.mean  |     From original dataset: tBodyGyroJerkMag-mean() <br>Original index: 253 |     |
| 40   |            time.body_gyro_jerk_mag.std  |      From original dataset: tBodyGyroJerkMag-std() <br>Original index: 254 |     |
| 41   |              frequency.body_acc.mean.x  |           From original dataset: fBodyAcc-mean()-X <br>Original index: 266 |     |
| 42   |              frequency.body_acc.mean.y  |           From original dataset: fBodyAcc-mean()-Y <br>Original index: 267 |     |
| 43   |              frequency.body_acc.mean.z  |           From original dataset: fBodyAcc-mean()-Z <br>Original index: 268 |     |
| 44   |               frequency.body_acc.std.x  |            From original dataset: fBodyAcc-std()-X <br>Original index: 269 |     |
| 45   |               frequency.body_acc.std.y  |            From original dataset: fBodyAcc-std()-Y <br>Original index: 270 |     |
| 46   |               frequency.body_acc.std.z  |            From original dataset: fBodyAcc-std()-Z <br>Original index: 271 |     |
| 47   |         frequency.body_acc_jerk.mean.x  |       From original dataset: fBodyAccJerk-mean()-X <br>Original index: 345 |     |
| 48   |         frequency.body_acc_jerk.mean.y  |       From original dataset: fBodyAccJerk-mean()-Y <br>Original index: 346 |     |
| 49   |         frequency.body_acc_jerk.mean.z  |       From original dataset: fBodyAccJerk-mean()-Z <br>Original index: 347 |     |
| 50   |          frequency.body_acc_jerk.std.x  |        From original dataset: fBodyAccJerk-std()-X <br>Original index: 348 |     |
| 51   |          frequency.body_acc_jerk.std.y  |        From original dataset: fBodyAccJerk-std()-Y <br>Original index: 349 |     |
| 52   |          frequency.body_acc_jerk.std.z  |        From original dataset: fBodyAccJerk-std()-Z <br>Original index: 350 |     |
| 53   |             frequency.body_gyro.mean.x  |          From original dataset: fBodyGyro-mean()-X <br>Original index: 424 |     |
| 54   |             frequency.body_gyro.mean.y  |          From original dataset: fBodyGyro-mean()-Y <br>Original index: 425 |     |
| 55   |             frequency.body_gyro.mean.z  |          From original dataset: fBodyGyro-mean()-Z <br>Original index: 426 |     |
| 56   |              frequency.body_gyro.std.x  |           From original dataset: fBodyGyro-std()-X <br>Original index: 427 |     |
| 57   |              frequency.body_gyro.std.y  |           From original dataset: fBodyGyro-std()-Y <br>Original index: 428 |     |
| 58   |              frequency.body_gyro.std.z  |           From original dataset: fBodyGyro-std()-Z <br>Original index: 429 |     |
| 59   |            frequency.body_acc_mag.mean  |          From original dataset: fBodyAccMag-mean() <br>Original index: 503 |     |
| 60   |             frequency.body_acc_mag.std  |           From original dataset: fBodyAccMag-std() <br>Original index: 504 |     |
| 61   |  frequency.body_body_acc_jerk_mag.mean  |  From original dataset: fBodyBodyAccJerkMag-mean() <br>Original index: 516 |     |
| 62   |   frequency.body_body_acc_jerk_mag.std  |   From original dataset: fBodyBodyAccJerkMag-std() <br>Original index: 517 |     |
| 63   |      frequency.body_body_gyro_mag.mean  |     From original dataset: fBodyBodyGyroMag-mean() <br>Original index: 529 |     |
| 64   |       frequency.body_body_gyro_mag.std  |      From original dataset: fBodyBodyGyroMag-std() <br>Original index: 530 |     |
| 65   | frequency.body_body_gyro_jerk_mag.mean  | From original dataset: fBodyBodyGyroJerkMag-mean() <br>Original index: 542 |     |
| 66   |  frequency.body_body_gyro_jerk_mag.std  |  From original dataset: fBodyBodyGyroJerkMag-std() <br>Original index: 543 |     |
| 67   |  activity                               |  The activity that was performed |    | 
| 68   |  subject_id                             |  The identifier of the subject who performed the activity | WALKING<br> WALKING_UPSTAIRS<br> WALKING_DOWNSTAIRS<br> SITTING<br> STANDING<br> LAYING |
--------------------------------------------------------------------------------                                           

## tidy_data_2.txt  
This dataset is a further summarisation of  **tidy_data_1.txt**.  
The specified requirement was to create a second, independent tidy data set with the average of each variable for each activity and each subject.
This data set was generated on June 16th, 2014, by running the script in the accompanying **run_analysis.R** file in R version 3.0.3.
### Transformations
### Measurement list