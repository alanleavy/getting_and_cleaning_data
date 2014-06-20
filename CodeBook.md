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

This data set was generated by running the script in the accompanying **run_analysis.R** file in R version 3.0.3.
### Transformations
The following transformations were applied to the original data set:
#### Merged Training and Test Data Sets
The contents fo the following original files were concatenated together:
* **X**: Measurements for each observation: train/X_train.txt and test/X_test.txt
* **y**: The activity code for each observation: train/y_train.txt and test/y_test.txt
* **subject**: The subjects perfoming each observed activity: train/subject_train.txt and test/subject_test.txt 
  
#### Filtered Measurements
The main data set **X** was filtered to remove all measurements that did not have either "-std()" or "-mean()"" in their original names specified in features.txt. 
 

#### Descriptive Measurement Names  
Discriptive measurement names were added to the main data set **X**  

The original dataset has structured measurement labels, listed in **features.txt**. Summarizing **features_info.txt** above, the labels for the measures we have selected have the following structure:   
[domain][base measure]-[summarization]-[axis] e.g. fBodyAccJerk-mean()-X  
with the following possible values for each component: 

| domain | base measure | summarization | axis |
| --- |  --- | --- | --- | 
| t | BodyAcc | mean() | X |       
| f | GraviyAcc | std() | Y |     
| | BodyAccJerk | | Z |    
| | BodyGyro | | |       
| | BodyGyroJerk | | |   
| | BodyAccMag | | |         
| | GraviyAccMag | | |      
| | BodyAccJerkMag | | |     
| | BodyGyroMag | | |        
| | BodyGyroJerkMag | | |  

While information rich, these original labels listed in **features.txt** have some issues:

1. R is likely removing to misinterpret names with "()" as function calls
2. R is likely removing to misinterpret names with "-" as subtractions
3. They are somewhat terse, especially in the domain component  (t, f)
4. Some of the names are inconsistent with each other and **features_info.txt**,  specifically the ones with a reduncant "Body" in them. E.g. fBodyBodyGyroJerkMag-std()
5. They do not comply fully with the style suggested in the week 4 lecture "Editing Text Variables" - all lower case when possible, without underscores, dots or whitespace.
    
So, the following remedial transformations were applied:

1. Removing "()" 
2. Removing "-" 
3. Replacing  the leading "t" with "time" ;   Replacing  the leading "f" with "frequency"
4. Replacing "BodyBody" with Body 

Note that no transformation was applied to address the 5th issue identified above - the names contain upper case letters. Lower camel case asn been used because:
* the names are long and difficult to parse without them  (e.g. "frequencybodyaccjerkmagmean" Vs "frequencyBodyAccJerkMagMean")
* the informative structure of the names would be completely lost. (I was tempted to add underscores between the name components to highlight this sturcture even more, even though this would also violate the suggested style)
* the guldeline is not iron-clad suggesting to use all lower case  **when possible**.
 
The resulting measurement names are detailed in the **Measurement List** section below.
  
#### Descriptive Activity Values 
A new column, **activity**, with descritive activity values corresponsing to the activity codes in **y**  was added to the main data set **X**.
The values used were taken form the original dataset file **activity_labels.txt**. These labels were fit for purpose without any additional transformation.

#### Added Subject Column
A new column, **subject**, was added to the main data set **X**. Its values were populated from the merged **subject**  data files (train/subject_train.txt and test/subject_test.txt).
 
### Measurement List
The transformed dataset **X** was output as a tab separated file **tidy_data_1.txt**.
It contains a header row and 12099 data rows,  with 68 columns:

| Order | Measure Name in tidy_data_1.txt |  Description | Units / Values |
| ----- | --------------------------------------- | --------------------------- | --- |
| 1    | timeBodyAccMeanX  |           From original dataset:<br> tBodyAcc-mean()-X <br>Original index:   1 |  units unchanged   |
| 2    | timeBodyAccMeanY  |           From original dataset:<br> tBodyAcc-mean()-Y <br>Original index:   2 |  units unchanged   |
| 3    | timeBodyAccMeanZ  |           From original dataset:<br> tBodyAcc-mean()-Z <br>Original index:   3 |  units unchanged   |
| 4    | timeBodyAccStdX  |            From original dataset:<br> tBodyAcc-std()-X <br>Original index:   4 |  units unchanged   |
| 5    | timeBodyAccStdY  |            From original dataset:<br> tBodyAcc-std()-Y <br>Original index:   5 |  units unchanged   |
| 6    | timeBodyAccStdZ  |            From original dataset:<br> tBodyAcc-std()-Z <br>Original index:   6 |  units unchanged   |
| 7    | timeGravityAccMeanX  |        From original dataset:<br> tGravityAcc-mean()-X <br>Original index:  41 |  units unchanged   |
| 8    | timeGravityAccMeanY  |        From original dataset:<br> tGravityAcc-mean()-Y <br>Original index:  42 |  units unchanged   |
| 9    | timeGravityAccMeanZ  |        From original dataset:<br> tGravityAcc-mean()-Z <br>Original index:  43 |  units unchanged   |
| 10   | timeGravityAccStdX  |         From original dataset:<br> tGravityAcc-std()-X <br>Original index:  44 |  units unchanged   |
| 11   | timeGravityAccStdY  |         From original dataset:<br> tGravityAcc-std()-Y <br>Original index:  45 |  units unchanged   |
| 12   | timeGravityAccStdZ  |         From original dataset:<br> tGravityAcc-std()-Z <br>Original index:  46 |  units unchanged   |
| 13   | timeBodyAccJerkMeanX  |       From original dataset:<br> tBodyAccJerk-mean()-X <br>Original index:  81 |  units unchanged   |
| 14   | timeBodyAccJerkMeanY  |       From original dataset:<br> tBodyAccJerk-mean()-Y <br>Original index:  82 |  units unchanged   |
| 15   | timeBodyAccJerkMeanZ  |       From original dataset:<br> tBodyAccJerk-mean()-Z <br>Original index:  83 |  units unchanged   |
| 16   | timeBodyAccJerkStdX  |        From original dataset:<br> tBodyAccJerk-std()-X <br>Original index:  84 |  units unchanged   |
| 17   | timeBodyAccJerkStdY  |        From original dataset:<br> tBodyAccJerk-std()-Y <br>Original index:  85 |  units unchanged   |
| 18   | timeBodyAccJerkStdZ  |        From original dataset:<br> tBodyAccJerk-std()-Z <br>Original index:  86 |  units unchanged   |
| 19   | timeBodyGyroMeanX  |          From original dataset:<br> tBodyGyro-mean()-X <br>Original index: 121 |  units unchanged   |
| 20   | timeBodyGyroMeanY  |          From original dataset:<br> tBodyGyro-mean()-Y <br>Original index: 122 |  units unchanged   |
| 21   | timeBodyGyroMeanZ  |          From original dataset:<br> tBodyGyro-mean()-Z <br>Original index: 123 |  units unchanged   |
| 22   | timeBodyGyroStdX  |           From original dataset:<br> tBodyGyro-std()-X <br>Original index: 124 |  units unchanged   |
| 23   | timeBodyGyroStdY  |           From original dataset:<br> tBodyGyro-std()-Y <br>Original index: 125 |  units unchanged   |
| 24   | timeBodyGyroStdZ  |           From original dataset:<br> tBodyGyro-std()-Z <br>Original index: 126 |  units unchanged   |
| 25   | timeBodyGyroJerkMeanX  |      From original dataset:<br> tBodyGyroJerk-mean()-X <br>Original index: 161 |  units unchanged   |
| 26   | timeBodyGyroJerkMeanY  |      From original dataset:<br> tBodyGyroJerk-mean()-Y <br>Original index: 162 |  units unchanged   |
| 27   | timeBodyGyroJerkMeanZ  |      From original dataset:<br> tBodyGyroJerk-mean()-Z <br>Original index: 163 |  units unchanged   |
| 28   | timeBodyGyroJerkStdX  |       From original dataset:<br> tBodyGyroJerk-std()-X <br>Original index: 164 |  units unchanged   |
| 29   | timeBodyGyroJerkStdY  |       From original dataset:<br> tBodyGyroJerk-std()-Y <br>Original index: 165 |  units unchanged   |
| 30   | timeBodyGyroJerkStdZ  |       From original dataset:<br> tBodyGyroJerk-std()-Z <br>Original index: 166 |  units unchanged   |
| 31   | timeBodyAccMagMean  |          From original dataset:<br> tBodyAccMag-mean() <br>Original index: 201 |  units unchanged   |
| 32   | timeBodyAccMagStd  |           From original dataset:<br> tBodyAccMag-std() <br>Original index: 202 |  units unchanged   |
| 33   | timeGravityAccMagMean  |       From original dataset:<br> tGravityAccMag-mean() <br>Original index: 214 |  units unchanged   |
| 34   | timeGravityAccMagStd  |        From original dataset:<br> tGravityAccMag-std() <br>Original index: 215 |  units unchanged   |
| 35   | timeBodyAccJerkMagMean  |      From original dataset:<br> tBodyAccJerkMag-mean() <br>Original index: 227 |  units unchanged   |
| 36   | timeBodyAccJerkMagStd  |       From original dataset:<br> tBodyAccJerkMag-std() <br>Original index: 228 |  units unchanged   |
| 37   | timeBodyGyroMagMean  |         From original dataset:<br> tBodyGyroMag-mean() <br>Original index: 240 |  units unchanged   |
| 38   | timeBodyGyroMagStd  |          From original dataset:<br> tBodyGyroMag-std() <br>Original index: 241 |  units unchanged   |
| 39   | timeBodyGyroJerkMagMean  |     From original dataset:<br> tBodyGyroJerkMag-mean() <br>Original index: 253 |  units unchanged   |
| 40   | timeBodyGyroJerkMagStd  |      From original dataset:<br> tBodyGyroJerkMag-std() <br>Original index: 254 |  units unchanged   |
| 41   | frequencyBodyAccMeanX  |           From original dataset:<br> fBodyAcc-mean()-X <br>Original index: 266 |  units unchanged   |
| 42   | frequencyBodyAccMeanY  |           From original dataset:<br> fBodyAcc-mean()-Y <br>Original index: 267 |  units unchanged   |
| 43   | frequencyBodyAccMeanZ  |           From original dataset:<br> fBodyAcc-mean()-Z <br>Original index: 268 |  units unchanged   |
| 44   | frequencyBodyAccStdX  |            From original dataset:<br> fBodyAcc-std()-X <br>Original index: 269 |  units unchanged   |
| 45   | frequencyBodyAccStdY  |            From original dataset:<br> fBodyAcc-std()-Y <br>Original index: 270 |  units unchanged   |
| 46   | frequencyBodyAccStdZ  |            From original dataset:<br> fBodyAcc-std()-Z <br>Original index: 271 |  units unchanged   |
| 47   | frequencyBodyAccJerkMeanX  |       From original dataset:<br> fBodyAccJerk-mean()-X <br>Original index: 345 |  units unchanged   |
| 48   | frequencyBodyAccJerkMeanY  |       From original dataset:<br> fBodyAccJerk-mean()-Y <br>Original index: 346 |  units unchanged   |
| 49   | frequencyBodyAccJerkMeanZ  |       From original dataset:<br> fBodyAccJerk-mean()-Z <br>Original index: 347 |  units unchanged   |
| 50   | frequencyBodyAccJerkStdX  |        From original dataset:<br> fBodyAccJerk-std()-X <br>Original index: 348 |  units unchanged   |
| 51   | frequencyBodyAccJerkStdY  |        From original dataset:<br> fBodyAccJerk-std()-Y <br>Original index: 349 |  units unchanged   |
| 52   | frequencyBodyAccJerkStdZ  |        From original dataset:<br> fBodyAccJerk-std()-Z <br>Original index: 350 |  units unchanged   |
| 53   | frequencyBodyGyroMeanX  |          From original dataset:<br> fBodyGyro-mean()-X <br>Original index: 424 |  units unchanged   |
| 54   | frequencyBodyGyroMeanY  |          From original dataset:<br> fBodyGyro-mean()-Y <br>Original index: 425 |  units unchanged   |
| 55   | frequencyBodyGyroMeanZ  |          From original dataset:<br> fBodyGyro-mean()-Z <br>Original index: 426 |  units unchanged   |
| 56   | frequencyBodyGyroStdX  |           From original dataset:<br> fBodyGyro-std()-X <br>Original index: 427 |  units unchanged   |
| 57   | frequencyBodyGyroStdY  |           From original dataset:<br> fBodyGyro-std()-Y <br>Original index: 428 |  units unchanged   |
| 58   | frequencyBodyGyroStdZ  |           From original dataset:<br> fBodyGyro-std()-Z <br>Original index: 429 |  units unchanged   |
| 59   | frequencyBodyAccMagMean  |          From original dataset:<br> fBodyAccMag-mean() <br>Original index: 503 |  units unchanged   |
| 60   | frequencyBodyAccMagStd  |           From original dataset:<br> fBodyAccMag-std() <br>Original index: 504 |  units unchanged   |
| 61   | frequencyBodyAccJerkMagMean  |  From original dataset:<br> fBodyBodyAccJerkMag-mean() <br>Original index: 516 |  units unchanged   |
| 62   | frequencyBodyAccJerkMagStd  |   From original dataset:<br> fBodyBodyAccJerkMag-std() <br>Original index: 517 |  units unchanged   |
| 63   | frequencyBodyGyroMagMean  |     From original dataset:<br> fBodyBodyGyroMag-mean() <br>Original index: 529 |  units unchanged   |
| 64   | frequencyBodyGyroMagStd  |      From original dataset:<br> fBodyBodyGyroMag-std() <br>Original index: 530 |  units unchanged   |
| 65   | frequencyBodyGyroJerkMagMean  | From original dataset:<br> fBodyBodyGyroJerkMag-mean() <br>Original index: 542 |  units unchanged   |
| 66   | frequencyBodyGyroJerkMagStd  |  From original dataset:<br> fBodyBodyGyroJerkMag-std() <br>Original index: 543 |  units unchanged   |
| 67   | activity  |  The activity that was performed | WALKING<br> WALKING_UPSTAIRS<br> WALKING_DOWNSTAIRS<br> SITTING<br> STANDING<br> LAYING   | 
| 68   | subject  |  The identifier of the subject who performed the activity | 1-30 |
--------------------------------------------------------------------------------                                           

## tidy_data_2.txt  
This dataset is a further summarisation of  **tidy_data_1.txt**.  
The specified requirement was to create a second, independent tidy data set with the average of each variable for each activity and each subject.
This data set was generated by running the script in the accompanying **run_analysis.R** file in R version 3.0.3.
### Transformations

#### Averaged Measurements
The average of each measurement in **tidy_data_1.txt** (1 to 66)  was taken, grouped by **activity** and **subject**.
These derrived measures were named based on the make of the measure averaged, by prefixing the averaged measurement name with "average.". E.g. the average of time.body_acc.mean.x has been named average.time.body_acc.mean.x. 

### Measurement list
This transformed dataset was output as a tab separated file **tidy_data_2.txt**.
It contains a header row and 180 data rows,  with 68 columns:

| Order | Measure Name in tidy_data_2.txt |  Description | Units / Values |
| ----- | --------------------------------------- | --------------------------- | --- |             
| 1    |  activity                               |  The activity that was performed | WALKING<br> WALKING_UPSTAIRS<br> WALKING_DOWNSTAIRS<br> SITTING<br> STANDING<br> LAYING   | 
| 2    |  subject                             |  The identifier of the subject<br>who performed the activity | 1-30 |
| 3   | timeBodyAccMeanXAverage  |  Average of<br>timeBodyAccMeanX <br>    by activity and subject |  units unchanged   |
| 4   | timeBodyAccMeanYAverage  |  Average of<br>timeBodyAccMeanY <br>    by activity and subject |  units unchanged   |
| 5   | timeBodyAccMeanZAverage  |  Average of<br>timeBodyAccMeanZ <br>    by activity and subject |  units unchanged   |
| 6   | timeBodyAccStdXAverage  |  Average of<br>timeBodyAccStdX <br>    by activity and subject |  units unchanged   |
| 7   | timeBodyAccStdYAverage  |  Average of<br>timeBodyAccStdY <br>    by activity and subject |  units unchanged   |
| 8   | timeBodyAccStdZAverage  |  Average of<br>timeBodyAccStdZ <br>    by activity and subject |  units unchanged   |
| 9   | timeGravityAccMeanXAverage  |  Average of<br>timeGravityAccMeanX <br>    by activity and subject |  units unchanged   |
| 10  | timeGravityAccMeanYAverage  |  Average of<br>timeGravityAccMeanY <br>    by activity and subject |  units unchanged   |
| 11  | timeGravityAccMeanZAverage  |  Average of<br>timeGravityAccMeanZ <br>    by activity and subject |  units unchanged   |
| 12   |timeGravityAccStdXAverage  |  Average of<br>timeGravityAccStdX <br>    by activity and subject |  units unchanged   |
| 13   |timeGravityAccStdYAverage  |  Average of<br>timeGravityAccStdY <br>    by activity and subject |  units unchanged   |
| 14   |timeGravityAccStdZAverage  |  Average of<br>timeGravityAccStdZ <br>    by activity and subject |  units unchanged   |
| 15   |timeBodyAccJerkMeanXAverage  |  Average of<br>timeBodyAccJerkMeanX <br>    by activity and subject |  units unchanged   |
| 16   |timeBodyAccJerkMeanYAverage  |  Average of<br>timeBodyAccJerkMeanY <br>    by activity and subject |  units unchanged   |
| 17   |timeBodyAccJerkMeanZAverage  |  Average of<br>timeBodyAccJerkMeanZ <br>    by activity and subject |  units unchanged   |
| 18   |timeBodyAccJerkStdXAverage  |  Average of<br>timeBodyAccJerkStdX <br>    by activity and subject |  units unchanged   |
| 19   |timeBodyAccJerkStdYAverage  |  Average of<br>timeBodyAccJerkStdY <br>    by activity and subject |  units unchanged   |
| 20   |timeBodyAccJerkStdZAverage  |  Average of<br>timeBodyAccJerkStdZ <br>    by activity and subject |  units unchanged   |
| 21   |timeBodyGyroMeanXAverage  |  Average of<br>timeBodyGyroMeanX <br>    by activity and subject |  units unchanged   |
| 22   |timeBodyGyroMeanYAverage  |  Average of<br>timeBodyGyroMeanY <br>    by activity and subject |  units unchanged   |
| 23   |timeBodyGyroMeanZAverage  |  Average of<br>timeBodyGyroMeanZ <br>    by activity and subject |  units unchanged   |
| 24   |timeBodyGyroStdXAverage  |  Average of<br>timeBodyGyroStdX <br>    by activity and subject |  units unchanged   |
| 25   |timeBodyGyroStdYAverage  |  Average of<br>timeBodyGyroStdY <br>    by activity and subject |  units unchanged   |
| 26   |timeBodyGyroStdZAverage  |  Average of<br>timeBodyGyroStdZ <br>    by activity and subject |  units unchanged   |
| 27   |timeBodyGyroJerkMeanXAverage  |  Average of<br>timeBodyGyroJerkMeanX <br>    by activity and subject |  units unchanged   |
| 28   |timeBodyGyroJerkMeanYAverage  |  Average of<br>timeBodyGyroJerkMeanY <br>    by activity and subject |  units unchanged   |
| 29   |timeBodyGyroJerkMeanZAverage  |  Average of<br>timeBodyGyroJerkMeanZ <br>    by activity and subject |  units unchanged   |
| 30   |timeBodyGyroJerkStdXAverage  |  Average of<br>timeBodyGyroJerkStdX <br>    by activity and subject |  units unchanged   |
| 31   |timeBodyGyroJerkStdYAverage  |  Average of<br>timeBodyGyroJerkStdY <br>    by activity and subject |  units unchanged   |
| 32   |timeBodyGyroJerkStdZAverage  |  Average of<br>timeBodyGyroJerkStdZ <br>    by activity and subject |  units unchanged   |
| 33   |timeBodyAccMagMeanAverage  |  Average of<br>timeBodyAccMagMean <br>    by activity and subject |  units unchanged   |
| 34   |timeBodyAccMagStdAverage  |  Average of<br>timeBodyAccMagStd <br>    by activity and subject |  units unchanged   |
| 35   |timeGravityAccMagMeanAverage  |  Average of<br>timeGravityAccMagMean <br>    by activity and subject |  units unchanged   |
| 36   |timeGravityAccMagStdAverage  |  Average of<br>timeGravityAccMagStd <br>    by activity and subject |  units unchanged   |
| 37   |timeBodyAccJerkMagMeanAverage  |  Average of<br>timeBodyAccJerkMagMean <br>    by activity and subject |  units unchanged   |
| 38   |timeBodyAccJerkMagStdAverage  |  Average of<br>timeBodyAccJerkMagStd <br>    by activity and subject |  units unchanged   |
| 39   |timeBodyGyroMagMeanAverage  |  Average of<br>timeBodyGyroMagMean <br>    by activity and subject |  units unchanged   |
| 40   |timeBodyGyroMagStdAverage  |  Average of<br>timeBodyGyroMagStd <br>    by activity and subject |  units unchanged   |
| 41   |timeBodyGyroJerkMagMeanAverage  |  Average of<br>timeBodyGyroJerkMagMean <br>    by activity and subject |  units unchanged   |
| 42   |timeBodyGyroJerkMagStdAverage  |  Average of<br>timeBodyGyroJerkMagStd <br>    by activity and subject |  units unchanged   |
| 43   |frequencyBodyAccMeanXAverage  |  Average of<br>frequencyBodyAccMeanX <br>    by activity and subject |  units unchanged   |
| 44   |frequencyBodyAccMeanYAverage  |  Average of<br>frequencyBodyAccMeanY <br>    by activity and subject |  units unchanged   |
| 45   |frequencyBodyAccMeanZAverage  |  Average of<br>frequencyBodyAccMeanZ <br>    by activity and subject |  units unchanged   |
| 46   |frequencyBodyAccStdXAverage  |  Average of<br>frequencyBodyAccStdX <br>    by activity and subject |  units unchanged   |
| 47   |frequencyBodyAccStdYAverage  |  Average of<br>frequencyBodyAccStdY <br>    by activity and subject |  units unchanged   |
| 48   |frequencyBodyAccStdZAverage  |  Average of<br>frequencyBodyAccStdZ <br>    by activity and subject |  units unchanged   |
| 49   |frequencyBodyAccJerkMeanXAverage  |  Average of<br>frequencyBodyAccJerkMeanX <br>    by activity and subject |  units unchanged   |
| 50   |frequencyBodyAccJerkMeanYAverage  |  Average of<br>frequencyBodyAccJerkMeanY <br>    by activity and subject |  units unchanged   |
| 51   |frequencyBodyAccJerkMeanZAverage  |  Average of<br>frequencyBodyAccJerkMeanZ <br>    by activity and subject |  units unchanged   |
| 52   |frequencyBodyAccJerkStdXAverage  |  Average of<br>frequencyBodyAccJerkStdX <br>    by activity and subject |  units unchanged   |
| 53   |frequencyBodyAccJerkStdYAverage  |  Average of<br>frequencyBodyAccJerkStdY <br>    by activity and subject |  units unchanged   |
| 54   |frequencyBodyAccJerkStdZAverage  |  Average of<br>frequencyBodyAccJerkStdZ <br>    by activity and subject |  units unchanged   |
| 55   |frequencyBodyGyroMeanXAverage  |  Average of<br>frequencyBodyGyroMeanX <br>    by activity and subject |  units unchanged   |
| 56   |frequencyBodyGyroMeanYAverage  |  Average of<br>frequencyBodyGyroMeanY <br>    by activity and subject |  units unchanged   |
| 57   |frequencyBodyGyroMeanZAverage  |  Average of<br>frequencyBodyGyroMeanZ <br>    by activity and subject |  units unchanged   |
| 58   |frequencyBodyGyroStdXAverage  |  Average of<br>frequencyBodyGyroStdX <br>    by activity and subject |  units unchanged   |
| 59   |frequencyBodyGyroStdYAverage  |  Average of<br>frequencyBodyGyroStdY <br>    by activity and subject |  units unchanged   |
| 60   |frequencyBodyGyroStdZAverage  |  Average of<br>frequencyBodyGyroStdZ <br>    by activity and subject |  units unchanged   |
| 61   |frequencyBodyAccMagMeanAverage  |  Average of<br>frequencyBodyAccMagMean <br>    by activity and subject |  units unchanged   |
| 62   |frequencyBodyAccMagStdAverage  |  Average of<br>frequencyBodyAccMagStd <br>    by activity and subject |  units unchanged   |
| 63   |frequencyBodyAccJerkMagMeanAverage  |  Average of<br>frequencyBodyAccJerkMagMean <br>    by activity and subject |  units unchanged   |
| 64   |frequencyBodyAccJerkMagStdAverage  |  Average of<br>frequencyBodyAccJerkMagStd <br>    by activity and subject |  units unchanged   |
| 65   |frequencyBodyGyroMagMeanAverage  |  Average of<br>frequencyBodyGyroMagMean <br>    by activity and subject |  units unchanged   |
| 66   |frequencyBodyGyroMagStdAverage  |  Average of<br>frequencyBodyGyroMagStd <br>    by activity and subject |  units unchanged   |
| 67   |frequencyBodyGyroJerkMagMeanAverage  |  Average of<br>frequencyBodyGyroJerkMagMean <br>    by activity and subject |  units unchanged   |
| 68   |frequencyBodyGyroJerkMagStdAverage  |  Average of<br>frequencyBodyGyroJerkMagStd <br>    by activity and subject |  units unchanged   |
