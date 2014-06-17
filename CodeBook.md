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

------------------------------

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
* **subject**: The subjects perfoming each observed activity: train/subject_train.txt and test/subject_test.txt

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
The values used were taken form the original dataset file activity_labels.txt. These labels were fit for purpose without any additional transformation.

#### Filtered Measurements
The main data set **X** was filtered to remove all measurements that did not have either "-std()" or "-mean()"" in their original names specified in features.txt. 
 
#### Added Subject Column
A new column, **subject_id**, was added to the main data set **X**. Its values were populated from the merged **subject**  data files (train/subject_train.txt and test/subject_test.txt).
 
### Measurement List
The transformed dataset **X** was output as a tab separated file **tidy_data_1.txt**.
It contains a header row and 12099 data rows,  with 68 columns:

| Order | Measure Name in tidy_data_1.txt |  Description | Units / Values |
| ----- | --------------------------------------- | --------------------------- | --- |
| 1   |                   time.body_acc.mean.x  |           From original dataset:<br> tBodyAcc-mean()-X <br>Original index:   1 |  units unchanged   |
| 2   |                   time.body_acc.mean.y  |           From original dataset:<br> tBodyAcc-mean()-Y <br>Original index:   2 |  units unchanged   |
| 3   |                   time.body_acc.mean.z  |           From original dataset:<br> tBodyAcc-mean()-Z <br>Original index:   3 |  units unchanged   |
| 4   |                    time.body_acc.std.x  |            From original dataset:<br> tBodyAcc-std()-X <br>Original index:   4 |  units unchanged   |
| 5   |                    time.body_acc.std.y  |            From original dataset:<br> tBodyAcc-std()-Y <br>Original index:   5 |  units unchanged   |
| 6   |                    time.body_acc.std.z  |            From original dataset:<br> tBodyAcc-std()-Z <br>Original index:   6 |  units unchanged   |
| 7   |                time.gravity_acc.mean.x  |        From original dataset:<br> tGravityAcc-mean()-X <br>Original index:  41 |  units unchanged   |
| 8   |                time.gravity_acc.mean.y  |        From original dataset:<br> tGravityAcc-mean()-Y <br>Original index:  42 |  units unchanged   |
| 9   |                time.gravity_acc.mean.z  |        From original dataset:<br> tGravityAcc-mean()-Z <br>Original index:  43 |  units unchanged   |
| 10   |                 time.gravity_acc.std.x  |         From original dataset:<br> tGravityAcc-std()-X <br>Original index:  44 |  units unchanged   |
| 11   |                 time.gravity_acc.std.y  |         From original dataset:<br> tGravityAcc-std()-Y <br>Original index:  45 |  units unchanged   |
| 12   |                 time.gravity_acc.std.z  |         From original dataset:<br> tGravityAcc-std()-Z <br>Original index:  46 |  units unchanged   |
| 13   |              time.body_acc_jerk.mean.x  |       From original dataset:<br> tBodyAccJerk-mean()-X <br>Original index:  81 |  units unchanged   |
| 14   |              time.body_acc_jerk.mean.y  |       From original dataset:<br> tBodyAccJerk-mean()-Y <br>Original index:  82 |  units unchanged   |
| 15   |              time.body_acc_jerk.mean.z  |       From original dataset:<br> tBodyAccJerk-mean()-Z <br>Original index:  83 |  units unchanged   |
| 16   |               time.body_acc_jerk.std.x  |        From original dataset:<br> tBodyAccJerk-std()-X <br>Original index:  84 |  units unchanged   |
| 17   |               time.body_acc_jerk.std.y  |        From original dataset:<br> tBodyAccJerk-std()-Y <br>Original index:  85 |  units unchanged   |
| 18   |               time.body_acc_jerk.std.z  |        From original dataset:<br> tBodyAccJerk-std()-Z <br>Original index:  86 |  units unchanged   |
| 19   |                  time.body_gyro.mean.x  |          From original dataset:<br> tBodyGyro-mean()-X <br>Original index: 121 |  units unchanged   |
| 20   |                  time.body_gyro.mean.y  |          From original dataset:<br> tBodyGyro-mean()-Y <br>Original index: 122 |  units unchanged   |
| 21   |                  time.body_gyro.mean.z  |          From original dataset:<br> tBodyGyro-mean()-Z <br>Original index: 123 |  units unchanged   |
| 22   |                   time.body_gyro.std.x  |           From original dataset:<br> tBodyGyro-std()-X <br>Original index: 124 |  units unchanged   |
| 23   |                   time.body_gyro.std.y  |           From original dataset:<br> tBodyGyro-std()-Y <br>Original index: 125 |  units unchanged   |
| 24   |                   time.body_gyro.std.z  |           From original dataset:<br> tBodyGyro-std()-Z <br>Original index: 126 |  units unchanged   |
| 25   |             time.body_gyro_jerk.mean.x  |      From original dataset:<br> tBodyGyroJerk-mean()-X <br>Original index: 161 |  units unchanged   |
| 26   |             time.body_gyro_jerk.mean.y  |      From original dataset:<br> tBodyGyroJerk-mean()-Y <br>Original index: 162 |  units unchanged   |
| 27   |             time.body_gyro_jerk.mean.z  |      From original dataset:<br> tBodyGyroJerk-mean()-Z <br>Original index: 163 |  units unchanged   |
| 28   |              time.body_gyro_jerk.std.x  |       From original dataset:<br> tBodyGyroJerk-std()-X <br>Original index: 164 |  units unchanged   |
| 29   |              time.body_gyro_jerk.std.y  |       From original dataset:<br> tBodyGyroJerk-std()-Y <br>Original index: 165 |  units unchanged   |
| 30   |              time.body_gyro_jerk.std.z  |       From original dataset:<br> tBodyGyroJerk-std()-Z <br>Original index: 166 |  units unchanged   |
| 31   |                 time.body_acc_mag.mean  |          From original dataset:<br> tBodyAccMag-mean() <br>Original index: 201 |  units unchanged   |
| 32   |                  time.body_acc_mag.std  |           From original dataset:<br> tBodyAccMag-std() <br>Original index: 202 |  units unchanged   |
| 33   |              time.gravity_acc_mag.mean  |       From original dataset:<br> tGravityAccMag-mean() <br>Original index: 214 |  units unchanged   |
| 34   |               time.gravity_acc_mag.std  |        From original dataset:<br> tGravityAccMag-std() <br>Original index: 215 |  units unchanged   |
| 35   |            time.body_acc_jerk_mag.mean  |      From original dataset:<br> tBodyAccJerkMag-mean() <br>Original index: 227 |  units unchanged   |
| 36   |             time.body_acc_jerk_mag.std  |       From original dataset:<br> tBodyAccJerkMag-std() <br>Original index: 228 |  units unchanged   |
| 37   |                time.body_gyro_mag.mean  |         From original dataset:<br> tBodyGyroMag-mean() <br>Original index: 240 |  units unchanged   |
| 38   |                 time.body_gyro_mag.std  |          From original dataset:<br> tBodyGyroMag-std() <br>Original index: 241 |  units unchanged   |
| 39   |           time.body_gyro_jerk_mag.mean  |     From original dataset:<br> tBodyGyroJerkMag-mean() <br>Original index: 253 |  units unchanged   |
| 40   |            time.body_gyro_jerk_mag.std  |      From original dataset:<br> tBodyGyroJerkMag-std() <br>Original index: 254 |  units unchanged   |
| 41   |              frequency.body_acc.mean.x  |           From original dataset:<br> fBodyAcc-mean()-X <br>Original index: 266 |  units unchanged   |
| 42   |              frequency.body_acc.mean.y  |           From original dataset:<br> fBodyAcc-mean()-Y <br>Original index: 267 |  units unchanged   |
| 43   |              frequency.body_acc.mean.z  |           From original dataset:<br> fBodyAcc-mean()-Z <br>Original index: 268 |  units unchanged   |
| 44   |               frequency.body_acc.std.x  |            From original dataset:<br> fBodyAcc-std()-X <br>Original index: 269 |  units unchanged   |
| 45   |               frequency.body_acc.std.y  |            From original dataset:<br> fBodyAcc-std()-Y <br>Original index: 270 |  units unchanged   |
| 46   |               frequency.body_acc.std.z  |            From original dataset:<br> fBodyAcc-std()-Z <br>Original index: 271 |  units unchanged   |
| 47   |         frequency.body_acc_jerk.mean.x  |       From original dataset:<br> fBodyAccJerk-mean()-X <br>Original index: 345 |  units unchanged   |
| 48   |         frequency.body_acc_jerk.mean.y  |       From original dataset:<br> fBodyAccJerk-mean()-Y <br>Original index: 346 |  units unchanged   |
| 49   |         frequency.body_acc_jerk.mean.z  |       From original dataset:<br> fBodyAccJerk-mean()-Z <br>Original index: 347 |  units unchanged   |
| 50   |          frequency.body_acc_jerk.std.x  |        From original dataset:<br> fBodyAccJerk-std()-X <br>Original index: 348 |  units unchanged   |
| 51   |          frequency.body_acc_jerk.std.y  |        From original dataset:<br> fBodyAccJerk-std()-Y <br>Original index: 349 |  units unchanged   |
| 52   |          frequency.body_acc_jerk.std.z  |        From original dataset:<br> fBodyAccJerk-std()-Z <br>Original index: 350 |  units unchanged   |
| 53   |             frequency.body_gyro.mean.x  |          From original dataset:<br> fBodyGyro-mean()-X <br>Original index: 424 |  units unchanged   |
| 54   |             frequency.body_gyro.mean.y  |          From original dataset:<br> fBodyGyro-mean()-Y <br>Original index: 425 |  units unchanged   |
| 55   |             frequency.body_gyro.mean.z  |          From original dataset:<br> fBodyGyro-mean()-Z <br>Original index: 426 |  units unchanged   |
| 56   |              frequency.body_gyro.std.x  |           From original dataset:<br> fBodyGyro-std()-X <br>Original index: 427 |  units unchanged   |
| 57   |              frequency.body_gyro.std.y  |           From original dataset:<br> fBodyGyro-std()-Y <br>Original index: 428 |  units unchanged   |
| 58   |              frequency.body_gyro.std.z  |           From original dataset:<br> fBodyGyro-std()-Z <br>Original index: 429 |  units unchanged   |
| 59   |            frequency.body_acc_mag.mean  |          From original dataset:<br> fBodyAccMag-mean() <br>Original index: 503 |  units unchanged   |
| 60   |             frequency.body_acc_mag.std  |           From original dataset:<br> fBodyAccMag-std() <br>Original index: 504 |  units unchanged   |
| 61   |  frequency.body_body_acc_jerk_mag.mean  |  From original dataset:<br> fBodyBodyAccJerkMag-mean() <br>Original index: 516 |  units unchanged   |
| 62   |   frequency.body_body_acc_jerk_mag.std  |   From original dataset:<br> fBodyBodyAccJerkMag-std() <br>Original index: 517 |  units unchanged   |
| 63   |      frequency.body_body_gyro_mag.mean  |     From original dataset:<br> fBodyBodyGyroMag-mean() <br>Original index: 529 |  units unchanged   |
| 64   |       frequency.body_body_gyro_mag.std  |      From original dataset:<br> fBodyBodyGyroMag-std() <br>Original index: 530 |  units unchanged   |
| 65   | frequency.body_body_gyro_jerk_mag.mean  | From original dataset:<br> fBodyBodyGyroJerkMag-mean() <br>Original index: 542 |  units unchanged   |
| 66   |  frequency.body_body_gyro_jerk_mag.std  |  From original dataset:<br> fBodyBodyGyroJerkMag-std() <br>Original index: 543 |  units unchanged   |
| 67   |  activity                               |  The activity that was performed | WALKING<br> WALKING_UPSTAIRS<br> WALKING_DOWNSTAIRS<br> SITTING<br> STANDING<br> LAYING   | 
| 68   |  subject_id                             |  The identifier of the subject who performed the activity | 1-30 |

--------------------------------------------------------------------------------                                           

## tidy_data_2.txt  
This dataset is a further summarisation of  **tidy_data_1.txt**.  
The specified requirement was to create a second, independent tidy data set with the average of each variable for each activity and each subject.
This data set was generated on June 16th, 2014, by running the script in the accompanying **run_analysis.R** file in R version 3.0.3.
### Transformations

#### Averaged Measurements
The average of each measurement in **tidy_data_1.txt** (1 to 66)  was taken, grouped by **activity** and **subject_id**.
These derrived measures were named based on the make of the measure averaged, by prefixing the averaged measurement name with "average.". E.g. the average of time.body_acc.mean.x has been named average.time.body_acc.mean.x. 

### Measurement list
This transformed dataset was output as a tab separated file **tidy_data_2.txt**.
It contains a header row and 180 data rows,  with 68 columns:

| Order | Measure Name in tidy_data_2.txt |  Description | Units / Values |
| ----- | --------------------------------------- | --------------------------- | --- |             
| 1    |  activity                               |  The activity that was performed | WALKING<br> WALKING_UPSTAIRS<br> WALKING_DOWNSTAIRS<br> SITTING<br> STANDING<br> LAYING   | 
| 2    |  subject_id                             |  The identifier of the subject who performed the activity | 1-30 |
| 3   |                   average.time.body_acc.mean.x  |                     Average of time.body_acc.mean.x <br>    by activity and subject_id |  units unchanged   |
| 4   |                   average.time.body_acc.mean.y  |                     Average of time.body_acc.mean.y <br>    by activity and subject_id |  units unchanged   |
| 5   |                   average.time.body_acc.mean.z  |                     Average of time.body_acc.mean.z <br>    by activity and subject_id |  units unchanged   |
| 6   |                    average.time.body_acc.std.x  |                      Average of time.body_acc.std.x <br>    by activity and subject_id |  units unchanged   |
| 7   |                    average.time.body_acc.std.y  |                      Average of time.body_acc.std.y <br>    by activity and subject_id |  units unchanged   |
| 8   |                    average.time.body_acc.std.z  |                      Average of time.body_acc.std.z <br>    by activity and subject_id |  units unchanged   |
| 9   |                average.time.gravity_acc.mean.x  |                  Average of time.gravity_acc.mean.x <br>    by activity and subject_id |  units unchanged   |
| 10  |                average.time.gravity_acc.mean.y  |                  Average of time.gravity_acc.mean.y <br>    by activity and subject_id |  units unchanged   |
| 11  |                average.time.gravity_acc.mean.z  |                  Average of time.gravity_acc.mean.z <br>    by activity and subject_id |  units unchanged   |
| 12   |                 average.time.gravity_acc.std.x  |                   Average of time.gravity_acc.std.x<br>    by activity and subject_id |  units unchanged   |
| 13   |                 average.time.gravity_acc.std.y  |                   Average of time.gravity_acc.std.y<br>    by activity and subject_id |  units unchanged   |
| 14   |                 average.time.gravity_acc.std.z  |                   Average of time.gravity_acc.std.z<br>    by activity and subject_id |  units unchanged   |
| 15   |              average.time.body_acc_jerk.mean.x  |                Average of time.body_acc_jerk.mean.x<br>    by activity and subject_id |  units unchanged   |
| 16   |              average.time.body_acc_jerk.mean.y  |                Average of time.body_acc_jerk.mean.y<br>    by activity and subject_id |  units unchanged   |
| 17   |              average.time.body_acc_jerk.mean.z  |                Average of time.body_acc_jerk.mean.z<br>    by activity and subject_id |  units unchanged   |
| 18   |               average.time.body_acc_jerk.std.x  |                 Average of time.body_acc_jerk.std.x<br>    by activity and subject_id |  units unchanged   |
| 19   |               average.time.body_acc_jerk.std.y  |                 Average of time.body_acc_jerk.std.y<br>    by activity and subject_id |  units unchanged   |
| 20   |               average.time.body_acc_jerk.std.z  |                 Average of time.body_acc_jerk.std.z<br>    by activity and subject_id |  units unchanged   |
| 21   |                  average.time.body_gyro.mean.x  |                    Average of time.body_gyro.mean.x<br>    by activity and subject_id |  units unchanged   |
| 22   |                  average.time.body_gyro.mean.y  |                    Average of time.body_gyro.mean.y<br>    by activity and subject_id |  units unchanged   |
| 23   |                  average.time.body_gyro.mean.z  |                    Average of time.body_gyro.mean.z<br>    by activity and subject_id |  units unchanged   |
| 24   |                   average.time.body_gyro.std.x  |                     Average of time.body_gyro.std.x<br>    by activity and subject_id |  units unchanged   |
| 25   |                   average.time.body_gyro.std.y  |                     Average of time.body_gyro.std.y<br>    by activity and subject_id |  units unchanged   |
| 26   |                   average.time.body_gyro.std.z  |                     Average of time.body_gyro.std.z<br>    by activity and subject_id |  units unchanged   |
| 27   |             average.time.body_gyro_jerk.mean.x  |               Average of time.body_gyro_jerk.mean.x<br>    by activity and subject_id |  units unchanged   |
| 28   |             average.time.body_gyro_jerk.mean.y  |               Average of time.body_gyro_jerk.mean.y<br>    by activity and subject_id |  units unchanged   |
| 29   |             average.time.body_gyro_jerk.mean.z  |               Average of time.body_gyro_jerk.mean.z<br>    by activity and subject_id |  units unchanged   |
| 30   |              average.time.body_gyro_jerk.std.x  |                Average of time.body_gyro_jerk.std.x<br>    by activity and subject_id |  units unchanged   |
| 31   |              average.time.body_gyro_jerk.std.y  |                Average of time.body_gyro_jerk.std.y<br>    by activity and subject_id |  units unchanged   |
| 32   |              average.time.body_gyro_jerk.std.z  |                Average of time.body_gyro_jerk.std.z<br>    by activity and subject_id |  units unchanged   |
| 33   |                 average.time.body_acc_mag.mean  |                   Average of time.body_acc_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 34   |                  average.time.body_acc_mag.std  |                    Average of time.body_acc_mag.std<br>    by activity and subject_id |  units unchanged   |
| 35   |              average.time.gravity_acc_mag.mean  |                Average of time.gravity_acc_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 36   |               average.time.gravity_acc_mag.std  |                 Average of time.gravity_acc_mag.std<br>    by activity and subject_id |  units unchanged   |
| 37   |            average.time.body_acc_jerk_mag.mean  |              Average of time.body_acc_jerk_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 38   |             average.time.body_acc_jerk_mag.std  |               Average of time.body_acc_jerk_mag.std<br>    by activity and subject_id |  units unchanged   |
| 39   |                average.time.body_gyro_mag.mean  |                  Average of time.body_gyro_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 40   |                 average.time.body_gyro_mag.std  |                   Average of time.body_gyro_mag.std<br>    by activity and subject_id |  units unchanged   |
| 41   |           average.time.body_gyro_jerk_mag.mean  |             Average of time.body_gyro_jerk_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 42   |            average.time.body_gyro_jerk_mag.std  |              Average of time.body_gyro_jerk_mag.std<br>    by activity and subject_id |  units unchanged   |
| 43   |              average.frequency.body_acc.mean.x  |                Average of frequency.body_acc.mean.x<br>    by activity and subject_id |  units unchanged   |
| 44   |              average.frequency.body_acc.mean.y  |                Average of frequency.body_acc.mean.y<br>    by activity and subject_id |  units unchanged   |
| 45   |              average.frequency.body_acc.mean.z  |                Average of frequency.body_acc.mean.z<br>    by activity and subject_id |  units unchanged   |
| 46   |               average.frequency.body_acc.std.x  |                 Average of frequency.body_acc.std.x<br>    by activity and subject_id |  units unchanged   |
| 47   |               average.frequency.body_acc.std.y  |                 Average of frequency.body_acc.std.y<br>    by activity and subject_id |  units unchanged   |
| 48   |               average.frequency.body_acc.std.z  |                 Average of frequency.body_acc.std.z<br>    by activity and subject_id |  units unchanged   |
| 49   |         average.frequency.body_acc_jerk.mean.x  |           Average of frequency.body_acc_jerk.mean.x<br>    by activity and subject_id |  units unchanged   |
| 50   |         average.frequency.body_acc_jerk.mean.y  |           Average of frequency.body_acc_jerk.mean.y<br>    by activity and subject_id |  units unchanged   |
| 51   |         average.frequency.body_acc_jerk.mean.z  |           Average of frequency.body_acc_jerk.mean.z<br>    by activity and subject_id |  units unchanged   |
| 52   |          average.frequency.body_acc_jerk.std.x  |            Average of frequency.body_acc_jerk.std.x<br>    by activity and subject_id |  units unchanged   |
| 53   |          average.frequency.body_acc_jerk.std.y  |            Average of frequency.body_acc_jerk.std.y<br>    by activity and subject_id |  units unchanged   |
| 54   |          average.frequency.body_acc_jerk.std.z  |            Average of frequency.body_acc_jerk.std.z<br>    by activity and subject_id |  units unchanged   |
| 55   |             average.frequency.body_gyro.mean.x  |               Average of frequency.body_gyro.mean.x<br>    by activity and subject_id |  units unchanged   |
| 56   |             average.frequency.body_gyro.mean.y  |               Average of frequency.body_gyro.mean.y<br>    by activity and subject_id |  units unchanged   |
| 57   |             average.frequency.body_gyro.mean.z  |               Average of frequency.body_gyro.mean.z<br>    by activity and subject_id |  units unchanged   |
| 58   |              average.frequency.body_gyro.std.x  |                Average of frequency.body_gyro.std.x<br>    by activity and subject_id |  units unchanged   |
| 59   |              average.frequency.body_gyro.std.y  |                Average of frequency.body_gyro.std.y<br>    by activity and subject_id |  units unchanged   |
| 60   |              average.frequency.body_gyro.std.z  |                Average of frequency.body_gyro.std.z<br>    by activity and subject_id |  units unchanged   |
| 61   |            average.frequency.body_acc_mag.mean  |              Average of frequency.body_acc_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 62   |             average.frequency.body_acc_mag.std  |               Average of frequency.body_acc_mag.std<br>    by activity and subject_id |  units unchanged   |
| 63   |  average.frequency.body_body_acc_jerk_mag.mean  |    Average of frequency.body_body_acc_jerk_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 64   |   average.frequency.body_body_acc_jerk_mag.std  |     Average of frequency.body_body_acc_jerk_mag.std<br>    by activity and subject_id |  units unchanged   |
| 65   |      average.frequency.body_body_gyro_mag.mean  |        Average of frequency.body_body_gyro_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 66   |       average.frequency.body_body_gyro_mag.std  |         Average of frequency.body_body_gyro_mag.std<br>    by activity and subject_id |  units unchanged   |
| 67   | average.frequency.body_body_gyro_jerk_mag.mean  |   Average of frequency.body_body_gyro_jerk_mag.mean<br>    by activity and subject_id |  units unchanged   |
| 68   |  average.frequency.body_body_gyro_jerk_mag.std  |    Average of frequency.body_body_gyro_jerk_mag.std<br>    by activity and subject_id |  units unchanged   |
