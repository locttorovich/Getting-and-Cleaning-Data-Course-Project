This project takes the raw data from the Human Activity Recognition Using Smartphones Data Set stored on the UCI Machine Learning Repository, and returns a single, more easily readable, data file reporting the average values for the mean and standard deviations measurements from the raw data for each study participant and activity. 

Source data

The raw data used for this project is stored at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the data is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data files contain the results of measurements of 561 variables recorded on 30 subjects while performing 6 different activities, for a total of 10,299 observations.  The data are divided into “test” and “training” sets, where 70% of subjects were randomly assigned to the “training” set, and the other 30% to the “test” set.

Files

The files used for this project were:
  -features.txt: contains the data column labels
  -activity_labels.txt:  key to decode the “activity” variable 
  -test/subject_test.txt: the subject corresponding to each row of data in the “test” set
  -train/subject_train.txt:  the subject corresponding to each row of data in the “train” set
  -test/y_test.txt: the activity label corresponding to each row of data in the  “test” set
  -train/y_train.txt: the activity label corresponding to each row of data in the  “train” set 
  -test/x_test.txt: the measurement data results for the “test” set
  -train/x_train.txt: the measurement data results for the “train” set

Original Variables 

Subject: an integer from 1 – 30 identifying which data rows correspond to which test subject

ctivity: an integer from 1 – 6 identifying which activity each data row corresponds to

Measurements: for each test, we are selecting only the data that represents a mean or standard deviation measurement:
1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
81 tBodyAccJerk-mean()-X
82 tBodyAccJerk-mean()-Y
83 tBodyAccJerk-mean()-Z
84 tBodyAccJerk-std()-X
85 tBodyAccJerk-std()-Y
86 tBodyAccJerk-std()-Z
121 tBodyGyro-mean()-X
122 tBodyGyro-mean()-Y
123 tBodyGyro-mean()-Z
124 tBodyGyro-std()-X
125 tBodyGyro-std()-Y
126 tBodyGyro-std()-Z
161 tBodyGyroJerk-mean()-X
162 tBodyGyroJerk-mean()-Y
163 tBodyGyroJerk-mean()-Z
164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
253 tBodyGyroJerkMag-mean()
254 tBodyGyroJerkMag-std()
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
294 fBodyAcc-meanFreq()-X
295 fBodyAcc-meanFreq()-Y
296 fBodyAcc-meanFreq()-Z
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
373 fBodyAccJerk-meanFreq()-X
374 fBodyAccJerk-meanFreq()-Y
375 fBodyAccJerk-meanFreq()-Z
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
452 fBodyGyro-meanFreq()-X
453 fBodyGyro-meanFreq()-Y
454 fBodyGyro-meanFreq()-Z

Transformations

Activity variables were converted from integers to text values (1=Walking, 2=Walking Upstairs, 3=Walking Downstairs, 4=Sitting, 5=Standing, 6=Laying.)

Data column names were simplified to:
TimeBodyAcc-Mean()-X
TimeBodyAcc-Mean()-Y
TimeBodyAcc-Mean()-Z
TimeBodyAcc-Std()-X
TimeBodyAcc-Std()-Y
TimeBodyAcc-Std()-Z
TimeGravityAcc-Mean()-X
TimeGravityAcc-Mean()-Y
TimeGravityAcc-Mean()-Z
TimeGravityAcc-Std()-X
TimeGravityAcc-Std()-Y
TimeGravityAcc-Std()-Z
TimeBodyAccJerk-Mean()-X
TimeBodyAccJerk-Mean()-Y
TimeBodyAccJerk-Mean()-Z
TimeBodyAccJerk-Std()-X
TimeBodyAccJerk-Std()-Y
TimeBodyAccJerk-Std()-Z
TimeBodyGyro-Mean()-X
TimeBodyGyro-Mean()-Y
TimeBodyGyro-Mean()-Z
TimeBodyGyro-Std()-X
TimeBodyGyro-Std()-Y
TimeBodyGyro-Std()-Z
TimeBodyGyroJerk-Mean()-X
TimeBodyGyroJerk-Mean()-Y
TimeBodyGyroJerk-Mean()-Z
TimeBodyGyroJerk-Std()-X
TimeBodyGyroJerk-Std()-Y
TimeBodyGyroJerk-Std()-Z
TimeBodyAccMag-Mean()
TimeBodyAccMag-Std()
TimeGravityAccMag-Mean()
TimeGravityAccMag-Std()
TimeBodyAccJerkMag-Mean()
TimeBodyAccJerkMag-Std()
TimeBodyGyroMag-Mean()
TimeBodyGyroMag-Std()
TimeBodyGyroJerkMag-Mean()
TimeBodyGyroJerkMag-Std()
FrequencyBodyAcc-Mean()-X
FrequencyBodyAcc-Mean()-Y
FrequencyBodyAcc-Mean()-Z
FrequencyBodyAcc-Std()-X
FrequencyBodyAcc-Std()-Y
FrequencyBodyAcc-Std()-Z
FrequencyBodyAcc-MeanFreq()-X
FrequencyBodyAcc-MeanFreq()-Y
FrequencyBodyAcc-MeanFreq()-Z
FrequencyBodyAccJerk-Mean()-X
FrequencyBodyAccJerk-Mean()-Y
FrequencyBodyAccJerk-Mean()-Z
FrequencyBodyAccJerk-Std()-X
FrequencyBodyAccJerk-Std()-Y
FrequencyBodyAccJerk-Std()-Z
FrequencyBodyAccJerk-MeanFreq()-X
FrequencyBodyAccJerk-MeanFreq()-Y
FrequencyBodyAccJerk-MeanFreq()-Z
FrequencyBodyGyro-Mean()-X
FrequencyBodyGyro-Mean()-Y
FrequencyBodyGyro-Mean()-Z
FrequencyBodyGyro-Std()-X
FrequencyBodyGyro-Std()-Y
FrequencyBodyGyro-Std()-Z
FrequencyBodyGyro-MeanFreq()-X
FrequencyBodyGyro-MeanFreq()-Y
FrequencyBodyGyro-MeanFreq()-Z
FrequencyBodyAccMag-Mean()
FrequencyBodyAccMag-Std()
FrequencyBodyAccMag-MeanFreq()
FrequencyBodyAccJerkMag-Mean()
FrequencyBodyAccJerkMag-Std()
FrequencyBodyAccJerkMag-MeanFreq()
FrequencyBodyGyroMag-Mean()
FrequencyBodyGyroMag-Std()
FrequencyBodyGyroMag-MeanFreq()
FrequencyBodyGyroJerkMag-Mean()
FrequencyBodyGyroJerkMag-Std()
FrequencyBodyGyroJerkMag-MeanFreq()

Data was averaged for each activity for each participant, with no rounding applied.
