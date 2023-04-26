fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,destfile = "./file_show (1).zip",method ="curl")
unzip("file_show (1).zip")

Activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("Activity code", "activity"))
Whattomeasure <- read.table("UCI HAR Dataset/features.txt", col.names =c("Feature ID","Measure Quantitiy"))

Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")

Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt")

Subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
Subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")

X <- rbind(Xtrain,Xtest)
Y <- rbind(Ytrain,Ytest)
Subject <- rbind(Subjecttrain,Subjecttest)

Total <- cbind(Subject,Y,X)

Summarized <- summary(Total)


