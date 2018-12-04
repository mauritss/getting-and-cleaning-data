# This ReadMe markdown file contains information about run_analysis.R and Codebook.md for the Coursera Course
This Repository and ReadMe file have been made by Maurits Sijtstra for the Coursera Getting And Cleaning Data Course Project

# INFORMATION ABOUT THE run.analysis.R SCRIPT
The R-script is written for the Coursera Tidy Data course assignment. This script uses data collected by: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

# The script creates two tidy data sets in eleven coded steps:
- Step 1: Loads the packages we need
- Step 2: Sets your working directory
- Step 3: Creates "data" directory to put the zip file with the data sets
- Step 4: Downloads the zipfile to the data directory
- Step 5: Unzips the zipfile to the dataset directory and reads the textfiles into R
- Step 6: Merges all the data sets and adds three columns for: group (1 = test group, 2 = training group), subject number and activity
- Step 7: Adds column- & activitynames to the dataset based on feature.txt
- Step 8: Selects columns with: mean, std, group, subject & activity
- Step 9: Tydie columnnames (remove special char, numbers, upper case, arrange)
- Step 10: Creates 2nd independent data set with average on each var for each act for each subject
- Step 11: Writes data sets to txt-file for submission

Following the eleven steps will create two tidy data sets that have column names that are lower case, descriptive, not duplicated and don't have underscores, dots or whitespaces. The steps are also placed in the code to make it more readable. 

# INFORMATION ABOUT THE codebook.md FILE
In the codebook.md file you will find more information about the two datasets, the variable names and the original dataset. 
