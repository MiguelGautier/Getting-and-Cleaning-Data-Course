
## Download Project Files
dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir.create("Projectfiles")
destdir<-file.path(getwd(),"Projectfiles")
if(!file.exists(file.path(destdir,"Projectfiles.zip"))) {
download.file(dataURL,destfile = file.path(destdir,"Projectfiles.zip"))
}

unzip(file.path(destdir,"Projectfiles.zip"),exdir = destdir)


##Load necessary libraries -- Install Packages if needed --
if(!("data.table" %in% installed.packages())) install.packages("data.table")
if(!("dplyr" %in% installed.packages())) install.packages("dplyr")

library("data.table")
library("dplyr")

## Load Activity Labels and Features into R
activitylabels<-fread(file.path(destdir,"UCI HAR Dataset/activity_labels.txt"),col.names = c("Activity","Activitylabel"))
features<-fread(file.path(destdir,"UCI HAR Dataset/features.txt"),col.names = c("Index","Variable Name"))

## Desired features
desiredfeatures<-grep("(mean(^A-Z)|std)",features$`Variable Name`,value=TRUE)


## Load Train Files into R and combine them in a single set
trainlabels <- fread(file.path(destdir,"UCI HAR Dataset/train/y_train.txt"), col.names = "Activity")
trainsubject<- fread(file.path(destdir,"UCI HAR Dataset/train/subject_train.txt"), col.names = "Subject")
trainset <- fread(file.path(destdir,"UCI HAR Dataset/train/X_train.txt"),col.names = features$`Variable Name`)

## Subset only mean and standard deviation columns and merge all train files
trainsubset <- trainset[,desiredfeatures,with=FALSE]
train <- cbind(trainlabels,trainsubject,trainsubset) 


## Load Test Files into R
testlabels <- fread(file.path(destdir,"UCI HAR Dataset/test/y_test.txt"), col.names = "Activity")
testsubject<- fread(file.path(destdir,"UCI HAR Dataset/test/subject_test.txt"), col.names = "Subject")
testset <- fread(file.path(destdir,"UCI HAR Dataset/test/X_test.txt"),col.names = features$`Variable Name`)

## Subset only mean and standard deviation columns and merge all test files
testsubset <- testset[,desiredfeatures,with=FALSE]
test <- cbind(testlabels,testsubject,testsubset)


## Combine Train and Test set into one set
mergedset <- rbind(train,test)
mergedset$Activity=factor(mergedset$Activity,levels = activitylabels$Activity,labels = activitylabels$Activitylabel)
mergedset$Subject=factor(mergedset$Subject)
## Tidy data set with averages for activity and subject
meltedset <- melt(mergedset,id=c("Activity","Subject"), measure.vars = c(desiredfeatures))
tidyset <- dcast(meltedset, Subject+Activity ~ variable, mean)

## Independet csv file 
setwd(destdir)
write.table(tidyset,file = "tidy_data.txt",row.names = FALSE)