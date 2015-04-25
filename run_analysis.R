#Load required libraries for processing data
library(dplyr)

#Load datasets
testset<-read.table('test/X_test.txt')
testlabel<-read.table('test/y_test.txt')
subjecttest<-read.table('test/subject_test.txt')
features<-read.table('features.txt')
activity_labels<-read.table('activity_labels.txt')
trainset<-read.table('train/X_train.txt')
trainlabel<-read.table('train/y_train.txt')
subjecttrain<-read.table('train/subject_train.txt')

#Convert dataset to data.frame
testset<-data.frame(testset)
trainset<-data.frame(trainset)

#Substitute number on activity label with descriptive name associated with number
for(i in 1:6){
        testlabel[testlabel==activity_labels$V1[i]]<-toString(activity_labels$V2[i])
        trainlabel[trainlabel==activity_labels$V1[i]]<-toString(activity_labels$V2[i])
}

#Combine labels with data sets 
testset<-data.frame(testlabel,subjecttest,testset)
trainset<-data.frame(trainlabel,subjecttrain,trainset)

#Merging training and test data
dataset<-rbind(testset,trainset)
dataset<-tbl.df(dataset) #Convert to table dataframe

#Appropriately labeling data set with descriptive variable names
colnames(dataset)<-c('Activity','Subject',as.vector(features$V2))

#Select columns with mean and std
meanind<-grep('mean',names(dataset))
stdind<-grep('std',names(dataset))
datasetmeanstd<-dataset[c(1,2,meanind,stdind)]

#Run through each of the variables and find the mean for each activity and subject, compile them into a matrix
for(i in 3:length(datasetmeanstd)){
        activitymean<-sapply(split(datasetmeanstd[,i],datasetmeanstd[,1]),mean)
        subjectmean<-sapply(split(datasetmeanstd[,i],datasetmeanstd[,2]),mean)
        if(i==3){
                activitymeans<-activitymean
                subjectmeans<-subjectmean
        } else{
                activitymeans<-cbind(activitymeans,activitymean)
                subjectmeans<-cbind(subjectmeans,subjectmean)
        }
}
tidyset<-data.frame(rbind(activitymeans,subjectmeans))
tidyset<-cbind(c(row.names(tidyset)[1:6],rep(NA,30)),c(rep(NA,6),row.names(tidyset)[7:36]),tidyset)
colnames(tidyset)<-c('Activity Mean','Subject Mean',names(datasetmeanstd[3:length(datasetmeanstd)]))
write.table(tidyset,'tidyset.txt')

