# load all data (assumes WD contains 'UCI HAR Dataset' directory)
features <- read.table("UCI HAR Dataset/features.txt", quote="\"",stringsAsFactors=FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
Y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")

# combine train and test data
data.subject <- rbind(subject_test,subject_train)
data.Xpre <- rbind(X_test,X_train)
data.Y <- rbind(Y_test,Y_train)

#name combined data
colnames(data.subject) <- c("Subject")
colnames(data.Y) <- c("ActivityCode")
colnames(data.Xpre) <- c(features[,2])
colnames(activity_labels) <- c("ActivityCode","ActivityLabel")

# eliminate measurements without mean() and std()
keepfeature = (grepl("Subject",colnames(data.Xpre)) | grepl("-mean\\(",colnames(data.Xpre)) | grepl("-std\\(",colnames(data.Xpre)) | grepl("ActivityLabel",colnames(data.Xpre)) )
data.X <- data.Xpre[keepfeature==TRUE]

# combine subject, activity, and measurement data
data.combined <- cbind(data.subject,data.Y,data.X)
#colnames(data.combined) <- c("Subject","ActivityCode",features[,2])

# add activity labels
data.activityfull <- merge(data.combined,activity_labels)
y <- data.activityfull[,2:length(data.activityfull[1,])]


# generate aggregate tidy data set
#z <- y[,!(names(y) %in% c("Subject","ActivityLabel"))]
aggregate <-aggregate(y[,2:67], by=list(Subject = y$Subject, Activity_Label = y$ActivityLabel), FUN=mean, na.rm=TRUE)
#z <- y[, lapply(.SD, mean), by=list(Subject, ActivityLabel)]

# write aggregate tidy data set
write.table(file="submit.txt", x=aggregate, row.names = FALSE)
