# CodeBook
This code book provides information about the two datasets and variables used for the coursera getting and cleaning data course. For more information see the Readme file. 

Dataset 1 "DTaverage.txt" (contains 180 observations on 89 variables).
Dataset 2 "DTsubset.txt (contains 10299 observations on 89 variables".
Both datasets:
- Contain data from both the training and the test sets; 
- Only the measurements on the mean and standard deviation for each measurement were extracted;
- Appropriately labels the data set with descriptive variable names (based on Tidy data rules);
- Descriptive activity names were given to the activity variable;
Each row identifies a subject who performed on one of six activities. The values show averages of means and standard deviations.
The set of variables that were estimated from these signals are: 
Only dataset 1 "DTaverage.txt":
- Contains the average of each variable for each activity and each subject.

The variables in the datasets are:
 [1] "activity" - factor - with six levels (1"walking",2"walkingupstairs",3"walkingdownstairs",4"sitting",5"standing",6"laying")       
 [2] "subject" - int - subject numbers 1 to 30                         
 [3] "tbodyaccmeanx" - numeric                     
 [4] "tbodyaccmeany" - numeric                 
 [5] "tbodyaccmeanz" - numeric                    
 [6] "tgravityaccmeanx" - numeric                
 [7] "tgravityaccmeany" - numeric                 
 [8] "tgravityaccmeanz" - numeric                 
 [9] "tbodyaccjerkmeanx" - numeric                 
 [10] "tbodyaccjerkmeany" - numeric                
[11] "tbodyaccjerkmeanz" - numeric                 
[12] "tbodygyromeanx" - numeric                   
[13] "tbodygyromeany" - numeric                   
[14] "tbodygyromeanz" - numeric                  
[15] "tbodygyrojerkmeanx" - numeric               
[16] "tbodygyrojerkmeany" - numeric                
[17] "tbodygyrojerkmeanz" - numeric                 
[18] "0tbodyaccmagmean" - numeric                   
[19] "tgravityaccmagmean" - numeric                 
[20] "tbodyaccjerkmagmean" - numeric               
[21] "0tbodygyromagmean" - numeric                   
[22] "tbodygyrojerkmagmean" - numeric              
[23] "fbodyaccmeanx" - numeric                      
[24] "fbodyaccmeany" - numeric                     
[25] "fbodyaccmeanz" - numeric                      
[26] "fbodyaccmeanfreqx" - numeric                 
[27] "fbodyaccmeanfreqy" - numeric                 
[28] "fbodyaccmeanfreqz" - numeric                 
[29] "fbodyaccjerkmeanx" - numeric                  
[30] "fbodyaccjerkmeany" - numeric                 
[31] "fbodyaccjerkmeanz" - numeric                  
[32] "fbodyaccjerkmeanfreqx" - numeric             
[33] "fbodyaccjerkmeanfreqy" - numeric              
[34] "fbodyaccjerkmeanfreqz" - numeric             
[35] "fbodygyromeanx" - numeric                     
[36] "fbodygyromeany" - numeric                   
[37] "fbodygyromeanz" - numeric                     
[38] "fbodygyromeanfreqx" - numeric                
[39] "fbodygyromeanfreqy" - numeric                 
[40] "fbodygyromeanfreqz" - numeric                
[41] "0fbodyaccmagmean" - numeric                   
[42] "fbodyaccmagmeanfreq" - numeric               
[43] "fbodybodyaccjerkmagmean" - numeric            
[44] "fbodybodyaccjerkmagmeanfreq" - numeric       
[45] "fbodybodygyromagmean" - numeric               
[46] "fbodybodygyromagmeanfreq" - numeric          
[47] "fbodybodygyrojerkmagmean" - numeric           
[48] "fbodybodygyrojerkmagmeanfreq" - numeric      
[49] "angletbodyaccmeangravity" - numeric          
[50] "angletbodyaccjerkmeangravitymean" - numeric  
[51] "angletbodygyromeangravitymean" - numeric     
[52] "angletbodygyrojerkmeangravitymean" - numeric 
[53] "anglexgravitymean" - numeric                  
[54] "0angleygravitymean" - numeric               
[55] "anglezgravitymean" - numeric                  
[56] "tbodyaccstdx" - numeric                      
[57] "tbodyaccstdy" - numeric                      
[58] "tbodyaccstdz" - numeric                      
[59] "tgravityaccstdx" - numeric                    
[60] "tgravityaccstdy" - numeric                   
[61] "tgravityaccstdz" - numeric                    
[62] "tbodyaccjerkstdx" - numeric                  
[63] "tbodyaccjerkstdy" - numeric                   
[64] "tbodyaccjerkstdz" - numeric                  
[65] "tbodygyrostdx" - numeric                      
[66] "tbodygyrostdy" - numeric                     
[67] "tbodygyrostdz" - numeric                      
[68] "tbodygyrojerkstdx" - numeric                 
[69] "tbodygyrojerkstdy" - numeric                 
[70] "tbodygyrojerkstdz" - numeric                 
[71] "0tbodyaccmagstd" - numeric                    
[72] "tgravityaccmagstd" - numeric                 
[73] "tbodyaccjerkmagstd" - numeric                 
[74] "tbodygyromagstd" - numeric                   
[75] "tbodygyrojerkmagstd" - numeric                
[76] "fbodyaccstdx" - numeric                      
[77] "0fbodyaccstdy" - numeric                      
[78] "fbodyaccstdz" - numeric                      
[79] "fbodyaccjerkstdx" - numeric                   
[80] "fbodyaccjerkstdy" - numeric                  
[81] "0fbodyaccjerkstdz" - numeric                  
[82] "fbodygyrostdx" - numeric                     
[83] "fbodygyrostdy" - numeric                     
[84] "fbodygyrostdz" - numeric                     
[85] "0fbodyaccmagstd" - numeric                    
[86] "fbodybodyaccjerkmagstd" - numeric           
[87] "0fbodybodygyromagstd" - numeric               
[88] "fbodybodygyrojerkmagstd" - numeric           
[89] "group" - factor - with 2 levels (test and train group)   

#Information about the variables in the original research data set (before mutatation) on which both datasets are computed
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The variable names are:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

