## Coursera Tidy Data Script coded by Maurits Sijtstra, December 2018

## CITATION: This script uses data from: Davide Anguita, Alessandro Ghio, 
## Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset
## for Human Activity Recognition Using Smartphones. 21th European Symposium on
## Artificial Neural Networks, ## Computational Intelligence and Machine 
## Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Step 1: Load the packages we need
library(data.table)
library(dplyr)

## Step 2: Set your working directory
setwd("~/YOURPATHNAME")

## Step 3: Creates "data" directory to put the zip file with the data sets
if (!file.exists("dataset")) {
    dir.create("dataset")
}

## Step 4: Downloads the zipfile to the data directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./dataset/dataset.zip", method = "curl")

## Step 5: Unzips the zipfile to the dataset directory and reads the textfiles into R
unzip("./dataset/dataset.zip", exdir = "dataset")
DTtest <- fread("./dataset/UCI HAR Dataset/test/X_test.txt", sep = " ")
DTtest_sub <- fread("./dataset/UCI HAR Dataset/test/subject_test.txt", sep = " ")
DTtest_act <- fread("./dataset/UCI HAR Dataset/test/y_test.txt", sep = " ")
DTtrain <- fread("./dataset/UCI HAR Dataset/train/X_train.txt", sep = " ")
DTtrain_sub <- fread("./dataset/UCI HAR Dataset/train/subject_train.txt", sep = " ")
DTtrain_act <- fread("./dataset/UCI HAR Dataset/train/y_train.txt", sep = " ")

## Step 6: Merges all the data sets and adds three columns for: 
## group (1 = test group, 2 = training group), subject number and activity
DTtest <- cbind(DTtest, DTtest_sub, DTtest_act)
DTtrain <- cbind(DTtrain, DTtrain_sub, DTtrain_act)
DTtest$group <- 1
DTtrain$group <- 2
DTmerged <- rbind(DTtest, DTtrain)
rm(DTtest, DTtrain, DTtest_sub, DTtest_act, DTtrain_sub, DTtrain_act)

## Step 7: Adds column- & activitynames to the dataset based on feature.txt
colnames(DTmerged) <- c(readLines("./dataset/UCI HAR Dataset/features.txt"),
                        "subject", "activity", "group")
DTmerged$activity <- factor(DTmerged$activity)
levels(DTmerged$activity) <- c("walking", "walkingupstairs",
                               "walkingdownstairs", "sitting", "standing",
                               "laying")

## Step 8: Selects columns with: mean, std, group, subject & activity
to_match <- c("[mM]ean","[sS]td","group")
DTsubset <- cbind(select(DTmerged,(matches("[mM]ean"))),
                  select(DTmerged,(matches("[sS]td"))), 
                  select(DTmerged,(matches("group"))), 
                  select(DTmerged,(matches("subject"))), 
                  select(DTmerged,(matches("activity"))))
rm(to_match, DTmerged)

## Step 9: Tydie columnnames (remove special char, numbers, upper case, arrange)
colnames(DTsubset) = colnames(DTsubset) %>% gsub("-", "", .) %>% 
    gsub("\\()", "", .) %>% gsub("\\(", "", .) %>% gsub("\\)", "", .) %>%
    gsub("\\,", "", .) %>% gsub(" ", "", .) %>% gsub("[1-9]", "", .)
colnames(DTsubset) = tolower(colnames(DTsubset))

## Step 10: Creates 2nd independent data set with average on each var for
## each act for each subject
DTaverage <- DTsubset %>% group_by(activity, subject) %>% summarise_all(funs(mean))
DTaverage$group <- factor(DTaverage$group)
levels(DTaverage$group) <- c("test", "train")

## Step 11: Writes data sets to txt-file for submission
write.table(x = DTsubset, file = "DTsubset.txt", sep = ",", row.names = F)
write.table(x = DTaverage, file = "DTaverage.txt", sep = ",", row.names = F)