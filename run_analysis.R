run_analysis.r

run_analysis <- function(){
# load test, training data
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
X_test = read.table("UCI HAR Dataset/test/X_test.txt")
Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")

subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
X_train = read.table("UCI HAR Dataset/train/X_train.txt")
Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")

#load data
features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)

#merge test, training data 
subject <- rbind(subject_test, subject_train)
names(subject) <- "subjectId"
X <- rbind(X_test, X_train)
X <- X[, includedFeatures]

names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
Y <- rbind(Y_test, Y_train)
names(Y) = "activityId"
activity <- merge(Y, activities, by="activityId")$activityLabel

#merge dataframes 
data <- cbind(subject, X, activity)
write.table(data, "merged_data.txt")

#apply stand dev, avg calcs, group by subj and activity 
require(data.table)
dataDT <- data.table(data)
calcData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]
write.table(calcData, "calc_tidy_data.txt")
}