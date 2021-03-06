####Libtrary####
library(lubridate)
library(plyr)

#### Getting the Data####
##downloading data from url
if(!file.exists("./data")){dir.create("./data")}
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url1,destfile="./data/Dataset.zip")

##Unzipping the data & creating filepaths
unzippedDataset <- unzip(zipfile="./data/Dataset.zip",exdir="./data")
fileroute <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(fileroute, recursive=TRUE)

####Cleaning & Tidying Data####
##Reading data from files in Dataset
y_testdata  <- read.table(file.path(fileroute, "test" , "Y_test.txt" ),header = FALSE)
y_traindata <- read.table(file.path(fileroute, "train", "Y_train.txt"),header = FALSE)
subject_traindata <- read.table(file.path(fileroute, "train", "subject_train.txt"),header = FALSE)
subject_testdata  <- read.table(file.path(fileroute, "test" , "subject_test.txt"),header = FALSE)
x_testdata  <- read.table(file.path(fileroute, "test" , "X_test.txt" ),header = FALSE)
x_traindata <- read.table(file.path(fileroute, "train", "X_train.txt"),header = FALSE)

##Merging training & training datasets
subject_data <- rbind(subject_traindata, subject_testdata)
y_data <- rbind(y_traindata, y_testdata)
x_data <- rbind(x_traindata, x_testdata)
x_column_names <- read.table(file.path(fileroute, "features.txt"),head=FALSE)
names(x_data)<- x_column_names$V2
names(subject_data)<-c("subject")
names(y_data)<- c("activity")
data_merge <- cbind(subject_data, y_data)
Data <- cbind(x_data, data_merge)

##Obteining the mean and standard deviation for measurements
features_subset <- x_column_names$V2[grep("mean\\(\\)|std\\(\\)", x_column_names$V2)]
selectedNames <-c(as.character(features_subset), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

##Assigning descriptive names
activityLabels <- read.table(file.path(fileroute, "activity_labels.txt"),header = FALSE)

##Labelling dataset with appropriate variable names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

##Creating text file of FinalData 
tidy_data2 <-aggregate(. ~subject + activity, Data, mean)
tidy_data2 <-tidy_data2[order(tidy_data2$subject,tidy_data2$activity),]
write.table(tidy_data2, file = "FinalData.txt",row.name=FALSE)
