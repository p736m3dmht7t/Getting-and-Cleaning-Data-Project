---
title: "ADL Project Tidy Data Code Book"
author: "John D. Phillips"
date: "March 21, 2015"
output: html_document
---

For each record in the dataset it is provided:<p>
<li>Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
<li>Triaxial Angular velocity from the gyroscope.
<li>A 561-feature vector with time and frequency domain variables. 
<li>Its activity label.
<li>An identifier of the subject who carried out the experiment.

<H1>Relevant Papers:</H1>

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

<H1>Citation Request:</H1>

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

<H1>Features of the Data Set</H1>
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<li>tBodyAcc-XYZ
<li>tGravityAcc-XYZ
<li>tBodyAccJerk-XYZ
<li>tBodyGyro-XYZ
<li>tBodyGyroJerk-XYZ
<li>tBodyAccMag
<li>tGravityAccMag
<li>tBodyAccJerkMag
<li>tBodyGyroMag
<li>tBodyGyroJerkMag
<li>fBodyAcc-XYZ
<li>fBodyAccJerk-XYZ
<li>fBodyGyro-XYZ
<li>fBodyAccMag
<li>fBodyAccJerkMag
<li>fBodyGyroMag
<li>fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

<li>mean(): Mean value
<li>std(): Standard deviation
<li>mad(): Median absolute deviation 
<li>max(): Largest value in array
<li>min(): Smallest value in array
<li>sma(): Signal magnitude area
<li>energy(): Energy measure. Sum of the squares divided by the number of values. 
<li>iqr(): Interquartile range 
<li>entropy(): Signal entropy
<li>arCoeff(): Autorregresion coefficients with Burg order equal to 4
<li>correlation(): correlation coefficient between two signals
<li>maxInds(): index of the frequency component with largest magnitude
<li>meanFreq(): Weighted average of the frequency components to obtain a mean frequency
<li>skewness(): skewness of the frequency domain signal 
<li>kurtosis(): kurtosis of the frequency domain signal 
<li>bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
<li>angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

<li>gravityMean
<li>tBodyAccMean
<li>tBodyAccJerkMean
<li>tBodyGyroMean
<li>tBodyGyroJerkMean

<H1>The Complete List of Variables</H1>
