

X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
X_data<-rbind(X_test, X_train)
features<-read.table("UCI HAR Dataset/features.txt")
colnames(X_data)<-features[,2]

y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
y_data<-rbind(y_test, y_train)
colnames(y_data)<- "Activity"

subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
subject_data<-rbind(subject_test, subject_train)
colnames(subject_data)<- "Subject_ID"

for (i in 1:nrow(y_data)) {
	if (y_data[i,1]==1) {y_data[i,1]="WALKING"}
	if (y_data[i,1]==2) {y_data[i,1]="WALKING UPSTAIRS"}
	if (y_data[i,1]==3) {y_data[i,1]="WALKING DOWNSTAIRS"}
	if (y_data[i,1]==4) {y_data[i,1]="SITTING"}
	if (y_data[i,1]==5) {y_data[i,1]="STANDING"}
	if (y_data[i,1]==6) {y_data[i,1]="LAYING"}	
}

exp_data<-cbind(subject_data, y_data, X_data)

tidy_data<-cbind(exp_data[1], exp_data[2])

meancols <- grep("mean()", names(exp_data))
stdcols <- grep("std()", names(exp_data))

for (i in 1:length(meancols)){
	tidy_data<- cbind(tidy_data, exp_data[meancols[i]])
}

for (i in 1:length(stdcols)){
	tidy_data<- cbind(tidy_data, exp_data[stdcols[i]])
}

write.table(tidy_data, file="tidy_data.txt")
