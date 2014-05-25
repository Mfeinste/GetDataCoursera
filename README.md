
Getting and Cleaning Data Coursera Course - Peer Assessment
________________________________________

Merges the training and test signal data into one data set ("X_data")

Assigns the column names of X_data using the values from "features.txt"

Merges the training and test activity data into one data set ("y_data")

Assigns the column name of y_data as "Activity"

Merges the training and test subject data into one data set ("subject_data")

Assigns the column name of subject_data as "Subject_ID"

Converts data in y_data from numeric values to string values describing the activity

Combines the columns of X_data, y-data, and subject_data into one data set ("exp_data")

Extracts subject data column and activity data columns from exp_data ("subject_data" and "y_data") and makes them the first two columns of a new data set ("tidy_data")

Extracts the columns from exp_data that have column names including the string "mean()" and adds those columns to tidy_data

Extracts the columns from exp_data that have column names including the string "std()" and adds those columns to tidy_data 

Creates the tidy_data text file.
