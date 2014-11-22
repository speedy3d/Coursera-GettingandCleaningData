#Class Project - Getting and Cleaning Data
===============================

run_analysis.R is an R script that will merge data from a number of data sets from "Human Activity Recognition Using Smartphones Dataset Version 1.0" into one tidy dataset with averages for each variable.

##About the data

The original dataset includes "experiments [that] have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

More information about this dataset can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

##About the Script

The run_analysis.R script merges data from a number of .txt files to create a new "tidy" dataset. This is accomplished through the following steps:

1) Training, test, subject, and feature datasets are read into R
2) Training and test data are merged toghether into a single dataset
3) Labels are added to comlumns that are related to mean and standard deviation
4) The script will then create the average of each variable for each activity/subject and label them with the appropriate average tag
4) The script will output a .txt file containing the now transformed tidy dataset

The tidy dataset, Coursera_UCI_HAR_TidyData.txt can be found in this repository

##Citation

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012