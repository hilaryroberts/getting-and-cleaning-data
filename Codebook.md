#Codebook

##Step4data

###Activity (categorical):
The activity performed by the subject as the measurements were taken. 
LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS

###Subject (integer):
Sequential numbers ranging from 1 to 30, which identify the subject on which the measurements were taken. 

###Measurements (numerical):

The remaining columns contain averages and standard deviations of the measurements. Columns 3 to 49 contain means, columns 50 to 81  contain standard deviations. Each column is a different type of measurement, the nature of which is described in the documentation accompanying the original dataset below:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Each column contains variables between 1- and 1. The full list is as follows:

 [3] "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"              
 [6] "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"           
 [8] "tGravityAcc-mean()-Z"           
 [9] "tBodyAccJerk-mean()-X"          
[10] "tBodyAccJerk-mean()-Y"          
[11] "tBodyAccJerk-mean()-Z"          
[12] "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"             
[14] "tBodyGyro-mean()-Z"             
[15] "tBodyGyroJerk-mean()-X"         
[16] "tBodyGyroJerk-mean()-Y"         
[17] "tBodyGyroJerk-mean()-Z"         
[18] "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"          
[20] "tBodyAccJerkMag-mean()"         
[21] "tBodyGyroMag-mean()"            
[22] "tBodyGyroJerkMag-mean()"        
[23] "fBodyAcc-mean()-X"              
[24] "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"              
[26] "fBodyAcc-meanFreq()-X"          
[27] "fBodyAcc-meanFreq()-Y"          
[28] "fBodyAcc-meanFreq()-Z"          
[29] "fBodyAccJerk-mean()-X"          
[30] "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"          
[32] "fBodyAccJerk-meanFreq()-X"      
[33] "fBodyAccJerk-meanFreq()-Y"      
[34] "fBodyAccJerk-meanFreq()-Z"      
[35] "fBodyGyro-mean()-X"             
[36] "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"             
[38] "fBodyGyro-meanFreq()-X"         
[39] "fBodyGyro-meanFreq()-Y"         
[40] "fBodyGyro-meanFreq()-Z"         
[41] "fBodyAccMag-mean()"             
[42] "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"     
[44] "fBodyBodyAccJerkMag-meanFreq()" 
[45] "fBodyBodyGyroMag-mean()"        
[46] "fBodyBodyGyroMag-meanFreq()"    
[47] "fBodyBodyGyroJerkMag-mean()"    
[48] "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"               
[50] "tBodyAcc-std()-Y"               
[51] "tBodyAcc-std()-Z"               
[52] "tGravityAcc-std()-X"            
[53] "tGravityAcc-std()-Y"            
[54] "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"           
[56] "tBodyAccJerk-std()-Y"           
[57] "tBodyAccJerk-std()-Z"           
[58] "tBodyGyro-std()-X"              
[59] "tBodyGyro-std()-Y"              
[60] "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"          
[62] "tBodyGyroJerk-std()-Y"          
[63] "tBodyGyroJerk-std()-Z"          
[64] "tBodyAccMag-std()"              
[65] "tGravityAccMag-std()"           
[66] "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"             
[68] "tBodyGyroJerkMag-std()"         
[69] "fBodyAcc-std()-X"               
[70] "fBodyAcc-std()-Y"               
[71] "fBodyAcc-std()-Z"               
[72] "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"           
[74] "fBodyAccJerk-std()-Z"           
[75] "fBodyGyro-std()-X"              
[76] "fBodyGyro-std()-Y"              
[77] "fBodyGyro-std()-Z"              
[78] "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"      
[80] "fBodyBodyGyroMag-std()"         
[81] "fBodyBodyGyroJerkMag-std()"



##Step5dfdata (dataframe Format)

This dataset describes the means of all the data from the Step 4 dataset for each subject-activity-measurement combination. 

###Measurement (categorical)

This column describes the measurement type, from the step 4 dataset, accross which the mean was taken. It consists of the measurement names, which are identical to the column names of columns 3 to 49 from the Step 4 dataset, each of which is repeated 30 times (once for each subject).

###Subject (categorical)

This column indicates which subjects' measurements the average was calculated on. It consists of the numbers 1 to 30, with each number included once for every measurement type.

###LAYING (numerical)
Averages for the measurements taken during the activity of laying.

###SITTING (numerical)
Averages for the measurements taken during the activity of sitting.

###STANDING (numerical)
Averages for the measurements taken during the activity of standing.

###WALKING (numerical)
Averages for the measurements taken during the activity of walking.

###WALKING_DOWNSTAIRS (numerical)
Averages for the measurements taken during the activity of walking down a set of stairs.

###WALKING_UPSTAIRS (numerical)
Averages for the measurements taken during the activity of walking up a set of stairs.



###Step5listdata (list format)

This contains the same data as the Step 5 dataframe format dataset, only here it is arranged as a list of smaller dataframes. Each dataframe corresponds to a single meansurement type, and consists of 6 columns, one for each activity, and 30 rows, one for each subject.

The names of each dataframe in the list are correspond to each measurement type. They are identical to the names of columns 3 to 49 from the Step 4 dataset.

Each of these data frames has six columns, each corresponding to one activity type. The names and descriptions are identical to those of columns 3-8 in the Step 5 dataframe format dataset. Each contains 30 columns, numbered consecutively 1 to 30, each number corresponding to one subject.
