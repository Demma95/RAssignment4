library(readr)

##Test Info####
body_acc_x_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", 
                               col_names = FALSE)
body_acc_y_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", 
                               col_names = FALSE)
body_acc_z_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", 
                               col_names = FALSE)
body_gyro_x_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", 
                                col_names = FALSE)
body_gyro_y_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", 
                                col_names = FALSE)
body_gyro_z_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", 
                                col_names = FALSE)
total_acc_x_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", 
                                col_names = FALSE)
total_acc_y_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", 
                                col_names = FALSE)
total_acc_z_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", 
                                col_names = FALSE)
X_test <- read_table2("UCI HAR Dataset/test/X_test.txt", 
                      col_names = FALSE)
y_test <- read_table2("UCI HAR Dataset/test/y_test.txt", 
                      col_names = FALSE)
subject_test <- read_table2("UCI HAR Dataset/test/subject_test.txt", 
                            col_names = FALSE)

##Train Info####
body_acc_x_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", 
                                col_names = FALSE)
body_acc_y_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", 
                                col_names = FALSE)
body_acc_z_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", 
                                col_names = FALSE)
body_gyro_x_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", 
                                 col_names = FALSE)
body_gyro_y_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", 
                                 col_names = FALSE)
body_gyro_z_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", 
                                 col_names = FALSE)
total_acc_x_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", 
                                 col_names = FALSE)
total_acc_y_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", 
                                 col_names = FALSE)
total_acc_z_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", 
                                 col_names = FALSE)
subject_train <- read_table2("UCI HAR Dataset/train/subject_train.txt", 
                             col_names = FALSE)
X_train <- read_table2("UCI HAR Dataset/train/X_train.txt", 
                       col_names = FALSE)
y_train <- read_table2("UCI HAR Dataset/train/y_train.txt", 
                       col_names = FALSE)

##1.Data Set####
dataTest <- data.frame(cbind(body_acc_x_test,body_acc_y_test,body_acc_z_test,body_gyro_x_test,body_gyro_y_test,body_gyro_z_test,total_acc_x_test,total_acc_y_test,total_acc_z_test,subject_test,X_test,y_test))
dataTrain <- data.frame(cbind(body_acc_x_train,body_acc_y_train,body_acc_z_train,body_gyro_x_train,body_gyro_y_train,body_gyro_z_train,total_acc_x_train,total_acc_y_train,total_acc_z_train,subject_train,X_train,y_train))
data <- data.frame(cbind(dataTest,dataTrain)) 

##2. Mean & SD####
meanAccxTest <- mean(colMeans(body_acc_x_test))
meanAccyTest <- mean(colMeans(body_acc_y_test))
meanAcczTest <- mean(colMeans(body_acc_z_test))
meanGiroxTest <- mean(colMeans(body_gyro_x_test))
meanGiroyTest <- mean(colMeans(body_gyro_y_test))
meanGirozTest <- mean(colMeans(body_gyro_z_test))
meanTotalxTest <- mean(colMeans(total_acc_x_test))
meanTotalyTest <- mean(colMeans(total_acc_y_test))
meanTotalzTest <- mean(colMeans(total_acc_z_test))
meanSubjectTest <- mean(colMeans(subject_test))
meanXTest <- mean(colMeans(X_test))
meanYTest <- mean(colMeans(y_test))
meantest <- cbind(meanAccxTest,meanAccyTest,meanAcczTest,meanGiroxTest,
                  meanGiroyTest,meanGirozTest,meanTotalxTest,meanTotalyTest,
                  meanTotalzTest,meanSubjectTest,meanXTest,meanYTest)
SDAccxTest <- sd(apply(body_acc_x_test, 2, sd))
SDAccyTest <- sd(apply(body_acc_y_test, 2, sd))
SDAcczTest <- sd(apply(body_acc_z_test, 2, sd))
SDGiroxTest <- sd(apply(body_gyro_x_test,2,sd))
SDGiroyTest <- sd(apply(body_gyro_y_test,2,sd))
SDGirozTest <- sd(apply(body_gyro_z_test,2,sd))
SDTotalxTest <- sd(apply(total_acc_x_test,2,sd))
SDTotalyTest <- sd(apply(total_acc_y_test,2,sd))
SDTotalzTest <- sd(apply(total_acc_z_test,2,sd))
SDSubjectTest <- sd(apply(subject_test,2,sd))
SDXTest <- sd(apply(X_test,2,sd))
SDyTest <- sd(apply(y_test,2,sd))
SDTest <- cbind(SDAccxTest,SDAccyTest,SDAcczTest,SDGiroxTest,SDGiroyTest,
                SDGirozTest,SDTotalxTest,SDTotalyTest,SDTotalzTest,SDSubjectTest,
                SDXTest,SDyTest)
MeanSDTest <- rbind(meantest,SDTest)
meanAccxTrain <- mean(colMeans(body_acc_x_train))
meanAccyTrain <- mean(colMeans(body_acc_y_train))
meanAcczTrain <- mean(colMeans(body_acc_z_train))
meanGiroxTrain <- mean(colMeans(body_gyro_x_train))
meanGiroyTrain <- mean(colMeans(body_gyro_y_train))
meanGirozTrain <- mean(colMeans(body_gyro_z_train))
meanTotalxTrain <- mean(colMeans(total_acc_x_train))
meanTotalyTrain <- mean(colMeans(total_acc_y_train))
meanTotalzTrain <- mean(colMeans(total_acc_z_train))
meanSubjectTrain <- mean(colMeans(subject_train))
meanXTrain <- mean(colMeans(X_train))
meanYTrain <- mean(colMeans(y_train))
meanTrain <- cbind(meanAccxTrain,meanAccyTrain,meanAcczTrain,meanGiroxTrain,
                   meanGiroyTrain,meanGirozTrain,meanTotalxTrain,meanTotalyTrain,
                   meanTotalzTrain,meanSubjectTrain,meanXTrain,meanYTrain)
SDAccxTrain <- sd(apply(body_acc_x_train, 2, sd))
SDAccyTrain <- sd(apply(body_acc_y_train, 2, sd))
SDAcczTrain <- sd(apply(body_acc_z_train, 2, sd))
SDGiroxTrain <- sd(apply(body_gyro_x_train,2,sd))
SDGiroyTrain <- sd(apply(body_gyro_y_train,2,sd))
SDGirozTrain <- sd(apply(body_gyro_z_train,2,sd))
SDTotalxTrain <- sd(apply(total_acc_x_train,2,sd))
SDTotalyTrain <- sd(apply(total_acc_y_train,2,sd))
SDTotalzTrain <- sd(apply(total_acc_z_train,2,sd))
SDSubjectTrain <- sd(apply(subject_train,2,sd))
SDXTrain <- sd(apply(X_train,2,sd))
SDyTrain <- sd(apply(y_train,2,sd))
SDTrain <- cbind(SDAccxTrain,SDAccyTrain,SDAcczTrain,SDGiroxTrain,SDGiroyTrain,
                 SDGirozTrain,SDTotalxTrain,SDTotalyTrain,SDTotalzTrain,SDSubjectTrain,
                 SDXTrain,SDyTrain)
MeanSDTrain <- rbind(meanTrain,SDTrain)
Mean <- colMeans(rbind(meantest,meanTrain))
SD <- colMeans(rbind(SDTest,SDTrain))
MeanSD <- rbind(Mean,SD)

##ColNames####
colnames(MeanSD) <- c("AccX","AccY","AccZ","GiroX","GiroY", 
                        "GiroZ","TotalX","TotalY","TotalZ","Subject","X","Y")
##RowNames####
rownames(MeanSD) <- c("Mean","SD")

MeanSD
