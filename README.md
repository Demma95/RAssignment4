# R - Getting and Cleaning Data

The source of the data is the following:
  Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
  1 - Smartlab - Non-Linear Complex Systems Laboratory
  DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
  2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
  Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
  activityrecognition '@' smartlab.ws

The name of the Data Set is:
  Human Activity Recognition Using Smartphones Data Set

The Data Set and Attribute information is sourced out of http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 and is the following:
    Data Set:
      The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities
      (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its 
      embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The 
      experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of 
      the volunteers was selected for generating the training data and 30% the test data.
      The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 
      2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated
      using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, 
      therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the 
      time and frequency domain.
    Attribute Information:
      For each record in the dataset it is provided:
      - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
      - Triaxial Angular velocity from the gyroscope.
      - A 561-feature vector with time and frequency domain variables.  
      - Its activity label.
      - An identifier of the subject who carried out the experiment.

CodeBook -> Describes the process to clena and tidy up the data
run_analysis.R - Script with the codes
FinalData.txt - clean and tidy up the data
