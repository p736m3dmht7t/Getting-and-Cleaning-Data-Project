# Assignment instructions:
#You should create one R script called run_analysis.R that does the follow.
# 1. Merges the train and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.
#
# 1a. Read the train data set
setwd('~/classes/Getting and Cleaning Data/Week 3 Assignment/')
train.data.set<-read.table('data/UCI HAR Dataset/train/X_train.txt')
vars          <-read.table('data/UCI HAR Dataset/features.txt')
names(train.data.set)<-vars[,2]
train.subjects<-read.table('data/UCI HAR Dataset/train/subject_train.txt')
names(train.subjects)<-'subject'
train.y       <-read.table('data/UCI HAR Dataset/train/y_train.txt')
names(train.y)<-'y'
train.data.set<-cbind(train.data.set,train.subjects,train.y)
# 1b. Read the test data set
test.data.set<-read.table('data/UCI HAR Dataset/test/X_test.txt')
names(test.data.set)<-vars[,2]
test.subjects<-read.table('data/UCI HAR Dataset/test/subject_test.txt')
names(test.subjects)<-'subject'
test.y       <-read.table('data/UCI HAR Dataset/test/y_test.txt')
names(test.y)<-'y'
test.data.set<-cbind(test.data.set,test.subjects,test.y)
# 1c. Merge the train and test data sets
data.set<-rbind(train.data.set,test.data.set,all=TRUE)
rm(train.data.set,train.subjects,train.y,test.data.set,test.subjects,test.y)
# 2a. Identify the columns that contain means or standard deviations
index<-grepl('mean',vars[,2],ignore.case=TRUE) | grepl('std',vars[,2],ignore.case=TRUE)
index<-index & !grepl('angle\\(',vars[,2],ignore.case=TRUE)
# 2b. Include subject and y columns
index<-c(index,TRUE,TRUE)
data.set<-data.set[,index]
#3a.  Convert 'y' column to descriptive activities
activity<-c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING')
data.set$activity<-activity[data.set$y]
index<-!names(data.set)=='y'
data.set<-data.set[,index]
#4a.  Appropriately label the columns of the data set
data.set$subject<-as.factor(data.set$subject)
data.set$activity<-as.factor(data.set$activity)
rm(index,vars,activity)
#5a.  Create a tidy data set of the means of the columns
tidy.data.set<-aggregate(.~subject+activity,data=data.set,mean)
write.table(tidy.data.set,'data/UCI HAR Dataset/tidy_data_set.txt',row.names=FALSE)
#6.  Generate a code book from the tidy data set
n<-dim(tidy.data.set)[2]
code.book<-data.frame(variable_name=character(n),
                      class=character(n),
                      minimum_value=numeric(n),
                      median_value=numeric(n),
                      mean_value=numeric(n),
                      maximum_value=numeric(n))
code.book$variable_name<-names(tidy.data.set)
code.book$class<-sapply(tidy.data.set,class)
index<-code.book$class=='numeric'
code.book$minimum_value[index]<-sapply(tidy.data.set[,index],min)
code.book$minimum_value[!index]<-NA
code.book$median_value[index]<-sapply(tidy.data.set[,index],median)
code.book$median_value[!index]<-NA
code.book$mean_value[index]<-sapply(tidy.data.set[,index],mean)
code.book$mean_value[!index]<-NA
code.book$maximum_value[index]<-sapply(tidy.data.set[,index],max)
code.book$maximum_value[!index]<-NA
write.table(code.book,'data/UCI HAR Dataset/code_book.txt',row.names=FALSE,col.names=FALSE)