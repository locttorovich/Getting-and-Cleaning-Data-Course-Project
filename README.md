# Getting-and-Cleaning-Data-Course-Project

***Introduction***

This repository contains the submissions for the Getting and Cleaning Data Course Project, which requires creating and posting a tidy data set based on the Human Activity Recognition Using Smartphones Data Set stored on the UCI Machine Learning Repository, along with the script and accompanying documentation.

***Source Data***

The data used for this project is stored at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the data is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data files contain the results of measurements of 561 variables recorded on 30 subjects while performing 6 different activities, for a total of 10,299 observations.  The data are divided into “test” and “training” sets, where 70% of subjects were randomly assigned to the “training” set, and the other 30% to the “test” set.

The posted CodeBook.md describes the data, variables and transformations performed in detail.

***Scripts***

The posted run_Analysis.R reads in the original source data files used, combines “test” and “train” data groups into one labeled file, performs some cleanup to make the file and data easier to read, then, for each measurement of mean or standard deviation, computes the average result for each subject for each activity.  The resulting file of 180 (30 participants, 6 activities each) rows is then saved out as averages_df.csv.

This is a stand-alone script that should be run from the same directory as the source data is stored locally.

