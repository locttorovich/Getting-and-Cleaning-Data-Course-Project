# 1 create test dataset, 518 columns with data on 9 subjects:
# subject # from subject_test (9 values from 1-30)
# test # from y_test (1-6)
# result variables from x_test (516 columns)

subj <- read.table("./test/subject_test.txt", header=FALSE) #2947 obs, 9 vals 1-30
test <- read.table("./test/y_test.txt", header=FALSE) #2947 obs, 6 values 1-6, test #
res <- read.table("./test/x_test.txt", header=FALSE) #2947 obs of 561 variables
testdf <- cbind(subj, test, res) # combined file, 2947 obs of 563 vars

# 2 create training dataset, 518 columns with data on 9 subjects:
# subject # from subject_train (9 values from 1-30)
# test # from y_train (1-6)
# result variables from x_train (516 columns)

subj <- read.table("./train/subject_train.txt", header=FALSE) #2947 obs, 9 vals 1-30
test <- read.table("./train/y_train.txt", header=FALSE) #2947 obs, 6 values 1-6, test #
res <- read.table("./train/x_train.txt", header=FALSE) #2947 obs of 561 variables
traindf <- cbind(subj, test, res) # combined file, 2947 obs of 563 vars

#combine to one file

file_df <- rbind(testdf, traindf)

#get data labels from features.txt

lab <- read.delim("features.txt", header = FALSE, colClasses = "character")

#add column names
names(file_df) <- c("Subject", "Activity", lab$V1)

#pull only mean and sd columns

sel_cols <- c(1, 2, grep("mean|std", names(file_df)))
an_file <- subset(file_df, select=sel_cols)

#remove temp data/vars

rm(file_df, lab, res, subj, test, testdf, traindf, sel_cols)

#clean up file for easier reading:

# rename activities
an_file$Activity[an_file$Activity == 1] <- "Walking"
an_file$Activity[an_file$Activity == 2] <- "Walking Upstairs"
an_file$Activity[an_file$Activity == 3] <- "Walking Downstairs"
an_file$Activity[an_file$Activity == 4] <- "Sitting"
an_file$Activity[an_file$Activity == 5] <- "Standing"
an_file$Activity[an_file$Activity == 6] <- "Laying"

#rename columns
names(an_file) = sub(".*? (.+)", "\\1", names(an_file))
names(an_file) = sub("mean","Mean",names(an_file))
names(an_file) = sub("std","Std",names(an_file))
names(an_file) = sub("^t", "Time", names(an_file))
names(an_file) = sub("^f", "Frequency", names(an_file))
names(an_file) = sub("BodyBody", "Body", names(an_file))

#create new df of avg of each var by subject and activity
library(dplyr)

group_df <- group_by(an_file, Subject, Activity)
( avg_df <- summarize_each(group_df,funs(mean) ))

#cleanup
rm(an_file, group_df)

#export data file
write.table(avg_df, file="averages_df.csv", sep=",", row.names=FALSE )
