#Load the main data from both the train and test sets and merge them.
data <- read.table("UCI HAR Dataset/train/X_train.txt")
data2 <- read.table("UCI HAR Dataset/test/X_test.txt")
fulldata <- rbind(data, data2)

#Load the names of the features as a table and set them as the column names of the main dataset
featurelabels <- read.table("UCI HAR Dataset/features.txt")
colnames(fulldata) <- featurelabels[,2]

#Load the (numeric) activity labels for both sets and combine them into one column
activitylabels <- read.table("UCI HAR Dataset/train/y_train.txt")
activitylabels2 <- read.table("UCI HAR Dataset/test/y_test.txt")
activitylabels <- rbind(activitylabels, activitylabels2)

#Now we load the table that assigns the acutal name of each activity to its numeric value. We save this table as a map.
labelnames <- read.table("UCI HAR Dataset/activity_labels.txt")
map <- setNames(labelnames[,2], labelnames[,1])

#Here we apply the map to the labels column to convert the numeric labels into text labels.
activitylabels[] <- map[as.matrix(activitylabels)]

#Load the subject columns for both sets and combine them.
subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjects2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(subjects, subjects2)

#Here we assemble the final dataframe, by first assigning the activity label and subject columns to the data frame and then searching through
#the main dataset for any columns with "mean" or "std" in the name and appending those.
step4data <- data.frame(activity = activitylabels[,1], subject = subjects[,1])
step4data <- cbind(step4data, fulldata[grepl("mean", colnames(fulldata))], fulldata[grepl("std", colnames(fulldata))])


## EXTRACTING STEP 5 DATA SET

#create an empty dataframe in which to store the data, as well as empty vectors for labelling columns.
step5dfdata <- data.frame()
measurement <- c()
subject <- c()

# This loop takes each column in the step 4 dataset and splits it by activity and subject. 
# It then applies the mean funtion and created a data frame with a different subject in each row and an activity for each column. This is added to the existing data frame.
# The name of the current measurement is stored 30 times in the measurement vector, so it can later be added as labels.
for (i in 3:ncol(step4data)){
    step5dfdata <- rbind(step5dfdata, data.frame(tapply(step4data[,i], list(step4data$subject, step4data$activity), mean)))
    measurement <- append(measurement, rep(colnames(step4data[i]), 30))
}

# Here the subject vector is filled in, which is just the numbers one to 30, over and over. Then the final data frame is assmebled with the labelling columns.
# Finally the row names are removed because they are nonsensiscal.
subject <- rep(1:30, (ncol(step4data)-2))
step5dfdata <- cbind(measurement, subject, step5dfdata[,1:6])
rownames(step5dfdata) <- NULL
