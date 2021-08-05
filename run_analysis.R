library(readr)

##Test Info####
body_acc_x_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", 
                               col_names = FALSE)
body_acc_x_test1 <- rowMeans(data.frame(body_acc_x_test))
body_acc_y_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", 
                               col_names = FALSE)
body_acc_y_test1 <- rowMeans(data.frame(body_acc_y_test))
body_acc_z_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", 
                               col_names = FALSE)
body_acc_z_test1 <- rowMeans(data.frame(body_acc_z_test))
body_gyro_x_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", 
                                col_names = FALSE)
body_gyro_x_test1 <- rowMeans(data.frame(body_gyro_x_test))
body_gyro_y_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", 
                                col_names = FALSE)
body_gyro_y_test1 <- rowMeans(data.frame(body_gyro_y_test))
body_gyro_z_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", 
                                col_names = FALSE)
body_gyro_z_test1 <- rowMeans(data.frame(body_gyro_z_test))
total_acc_x_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", 
                                col_names = FALSE)
total_acc_x_test1 <- rowMeans(data.frame(total_acc_x_test))
total_acc_y_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", 
                                col_names = FALSE)
total_acc_y_test1 <- rowMeans(data.frame(total_acc_y_test))
total_acc_z_test <- read_table2("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", 
                                col_names = FALSE)
total_acc_z_test1 <- rowMeans(data.frame(total_acc_z_test))
X_test <- read_table2("UCI HAR Dataset/test/X_test.txt", 
                      col_names = FALSE)
X_test1 <- rowMeans(data.frame(X_test))
y_test <- read_table2("UCI HAR Dataset/test/y_test.txt", 
                      col_names = FALSE)
y_test1 <- rowMeans(data.frame(y_test))
subject_test <- read_table2("UCI HAR Dataset/test/subject_test.txt", 
                            col_names = FALSE)
subject_test1 <- rowMeans(data.frame(subject_test))

##Train Info####
body_acc_x_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", 
                                col_names = FALSE)
body_acc_x_train1 <- rowMeans(data.frame(body_acc_x_train))
body_acc_y_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", 
                                col_names = FALSE)
body_acc_y_train1 <- rowMeans(data.frame(body_acc_y_train))
body_acc_z_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", 
                                col_names = FALSE)
body_acc_z_train1 <- rowMeans(data.frame(body_acc_z_train))
body_gyro_x_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", 
                                 col_names = FALSE)
body_gyro_x_train1 <- rowMeans(data.frame(body_gyro_x_train))
body_gyro_y_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", 
                                 col_names = FALSE)
body_gyro_y_train1 <- rowMeans(data.frame(body_gyro_y_train))
body_gyro_z_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", 
                                 col_names = FALSE)
body_gyro_z_train1 <- rowMeans(data.frame(body_gyro_z_train))
total_acc_x_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", 
                                 col_names = FALSE)
total_acc_x_train1 <- rowMeans(data.frame(total_acc_x_train))
total_acc_y_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", 
                                 col_names = FALSE)
total_acc_y_train1 <- rowMeans(data.frame(total_acc_y_train))
total_acc_z_train <- read_table2("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", 
                                 col_names = FALSE)
total_acc_z_train1 <- rowMeans(data.frame(total_acc_z_train))
subject_train <- read_table2("UCI HAR Dataset/train/subject_train.txt", 
                             col_names = FALSE)
subject_train1 <- rowMeans(data.frame(subject_train))
X_train <- read_table2("UCI HAR Dataset/train/X_train.txt", 
                       col_names = FALSE)
X_train1 <- rowMeans(data.frame(X_train))
y_train <- read_table2("UCI HAR Dataset/train/y_train.txt", 
                       col_names = FALSE)
y_train1 <- rowMeans(data.frame(y_train))

##1.Data Set####
dataTest <- data.frame(cbind(body_acc_x_test1,body_acc_y_test1,body_acc_z_test1,body_gyro_x_test1,body_gyro_y_test1,body_gyro_z_test1,total_acc_x_test1,total_acc_y_test1,total_acc_z_test1,subject_test1,X_test1,y_test1))
colnames(dataTest) <- c("body_acc_x","body_acc_y","body_acc_z","body_gyro_x","body_gyro_y", 
                      "body_gyro_y","total_acc_y","total_acc_y","total_acc_y","Subject","X","Y")
dataTrain <- data.frame(cbind(body_acc_x_train1,body_acc_y_train1,body_acc_z_train1,body_gyro_x_train1,body_gyro_y_train1,body_gyro_z_train1,total_acc_x_train1,total_acc_y_train1,total_acc_z_train1,subject_train1,X_train1,y_train1))
colnames(dataTrain) <- c("body_acc_x","body_acc_y","body_acc_z","body_gyro_x","body_gyro_y", 
                        "body_gyro_y","total_acc_y","total_acc_y","total_acc_y","Subject","X","Y")
data <- data.frame(rbind(dataTest,dataTrain)) 

##2. Mean & SD####
meanData <- colMeans(data)
SDData <- apply(data, 2, sd)
MeanSD <- rbind(meanData,SDData)

##ColNames####
colnames(MeanSD) <- c("body_acc_x","body_acc_y","body_acc_z","body_gyro_x","body_gyro_y", 
                        "body_gyro_y","total_acc_y","total_acc_y","total_acc_y","Subject","X","Y")
##RowNames####
rownames(MeanSD) <- c("Mean","SD")

MeanSD
write.table(MeanSD, file = "MeanSD.txt", sep = "")
