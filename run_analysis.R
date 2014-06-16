download_dataset <- function(){
  ## Download in the UCI HAR dataset, unzip it into a new timestamped directory and make that the working directory
  
  fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(fileURL, "UCI_HAR_Dataset.zip")
  destination_folder <- paste("UCI_HAR_Dataset", Sys.Date(), sep="__")
  unzip("UCI_HAR_Dataset.zip", exdir = destination_folder, setTimes = T)
  setwd(destination_folder)
}

clean_data <- function(){
  ## This is the  main function for cleaning the UCI HAR Dataset  
  ## Assumes that the original UCI data is in a folder "UCI HAR Dataset", in the current working directory
  
    ## Merge the various components of the training and test datasets
  df_tidy_data <- merge_features()
  df_merged_activities <- merge_activities()
  df_merged_subjects <- merge_subjects()
  
    ## Filter for just the features we're interested in (averages and standard deviations)
  df_relevant_features <- select_features()
  df_tidy_data <- df_tidy_data[,df_relevant_features[,1]]
  
    ## Create descriptive feature names, cleaned versions of the UCI HAR feature labels,
    ##  and add them to our filtered data frame
  df_relevant_features <- modify_feature_names(df_relevant_features)
  colnames(df_tidy_data) <- df_relevant_features$new_names

    ## Add an 'activity' column containing a descriptive activity name for each measurement.
    ## The original UCI HAR activity labels are fit for purpose as they are.
  df_tidy_data$activity <- create_activity_column(df_merged_activities)  
  
    ## Add a 'subject_id' column identifying the subject who performed the activity for each
    ##  measurement. 
  df_tidy_data$subject_id <- df_merged_subjects$V1 
  
    ## Write out the first tidy dataset
  write.table(df_tidy_data, "tidy_data_1.txt", row.names = F, sep="\t")
  
    ## Create and write out the second tidy dataset
  df_tidy_data_2 <- create_summary_dataframe(df_tidy_data)  
  write.table(df_tidy_data_2, "tidy_data_2.txt", row.names = F, sep="\t")
}


merge_features <- function(){
  
  ## Assumes that the original UCI data is in a folder "UCI HAR Dataset", in the current working directory
  
    ## Read the training measurement set into a dataframe
  h_X_train <- file("UCI HAR Dataset/train/X_train.txt")
  df_X_train <- read.table(h_X_train)
  
    ## Read the testing measurement set into a dataframe
  h_X_test <- file("UCI HAR Dataset/test/X_test.txt")
  df_X_test <- read.table(h_X_test)
  
    ## Return a merged dataframe
  rbind(df_X_train,df_X_test)
}


merge_activities <- function(){
  
  ## Assumes that the original UCI data is in a folder "UCI HAR Dataset", in the current working directory
  
  ## Read the training activity data into a dataframe
  h_y_train <- file("UCI HAR Dataset/train/y_train.txt")
  df_y_train <- read.table(h_y_train)
  
  ## Read the testing activity data  into a dataframe
  h_y_test <- file("UCI HAR Dataset/test/y_test.txt")
  df_y_test <- read.table(h_y_test)
  
  ## Return a merged dataframe
  rbind(df_y_train,df_y_test)
}


merge_subjects <- function(){
  
  ## Assumes that the original UCI data is in a folder "UCI HAR Dataset", in the current working directory
  
  ## Read the training subject data into a dataframe
  h_subject_train <- file("UCI HAR Dataset/train/subject_train.txt")
  df_subject_train <- read.table(h_subject_train)
  
  ## Read the testing subject data into a dataframe
  h_subject_test <- file("UCI HAR Dataset/test/subject_test.txt")
  df_subject_test <- read.table(h_subject_test)
  
  ## Return a merged dataframe
  rbind(df_subject_train,df_subject_test)
}


select_features <- function(){
  
  
  ## Assumes that the original UCI data is in a folder "UCI HAR Dataset", in the current working directory
  
    ## Read in the complete set of original feature names and column numbers
  h_feature <- file("UCI HAR Dataset/features.txt")
  df_feature <- read.table(h_feature)
  
    ## Identify which features / columns contain either "-std()" OR "-mean()"
  lv_select_features <- grepl("-std\\(\\)|mean\\(\\)",df_feature$V2)
  
   ## Sub-set only those features and return a modified feature name / column number dataframe
  df_feature[lv_select_features,]
}


modify_feature_names <- function(df_features){
  ## This function takes the original UCI feature labels and modifies them to facilitate subsequqnt analysis using R
  ## The input parameter is teh selected feature dataframe previously returned by select_features()
  
  
    ## Remove "()" to avoid possible confusion with fucntion calls in R
  new_names <- gsub("\\(\\)","",df_features$V2)
  
    ## Replace "-" with "." to avoid possible confusion with subtraction in R
  new_names <- gsub("-",".",new_names)
  
    ## Convert camel case to underscore, becasue I think it's easier to read 
    ## (e.g. fBodyBodyGyroJerkMag_std Vs f_body_body_gyro_jerk_mag_std)
  new_names <-  gsub("([A-Z])", "_\\L\\1", new_names, perl=T)
    ## Tidy up side effect of converting things like '.X' to ._x
  new_names <-  gsub("\\._", "\\.", new_names, perl=T)
  
    ## Replace the leading "t_" with "time."
  new_names <-  gsub("^t_", "time.", new_names, perl=T)
  
    ## Replace the leading "f_" with "freq."
  new_names <-  gsub("^f_", "frequency.", new_names, perl=T)
  
    ## Add the new names as a new column to the data frame passed in df_features, and return it.
  df_features$new_names <- new_names
  df_features
}


create_activity_column <- function(df_activity_numbers){
  
  ## Assumes that the original UCI data is in a folder "UCI HAR Dataset", in the current working directory
  
    ## Read the original activity labels  set into a dataframe
  h_activity_labels <- file("UCI HAR Dataset/activity_labels.txt")
  df_activity_labels <- read.table(h_activity_labels)
  
    ## Look up the activity numbers in the activity labels dataframe, and return a dataframe with the 
    ##  corresponsing label for each element in df_activity_numbers
  ## df_activity_labels[df_activity_numbers[,1],2]  
  ## sapply(df_activity_numbers[1], function(x){df_activity_labels[x,2]}) 
  sapply(df_activity_numbers$V1, function(x){df_activity_labels$V2[x]}) 
}


create_summary_dataframe <- function(df){
    ## We're using the plyr package to summarise the data set
  library(plyr)
  
    ## Create a new data frame with the average of each column, grouped by $activity and $subject_id
  new_df <- ddply(df,c("activity", "subject_id"), colwise(mean))
  
    ## Modify the column names of the new dataframe, except $activity and $subject_id, prefixing the original names with "average."
  colnames(new_df)[3:68] <- paste("average", colnames(new_df)[2:67], sep=".")
  new_df
  
}