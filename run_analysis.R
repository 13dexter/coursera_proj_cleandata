# loading data
# -- common data
features <- read.table("../project_data/features.txt",sep=" ", header=F)
activity_labels <- read.table("../project_data/activity_labels.txt",sep=" ", header=F)
colnames(activity_labels) <- c("activity_code","activity_name")

# functions
create_test_df <- function(x){
	mat = matrix(as.numeric(x[[1]]), ncol=length(x[[1]]));
	for (irow in 2:length(x)){
		mat <- rbind(mat, as.numeric(x[[irow]]));
	}
	data <- as.data.frame(mat)
	return(data)
}

create_df <- function(fname=""){
	rawdata <- readLines(fname);
	tmp <- gsub(" -",",-",rawdata);
	tmp <- gsub("  ",",", tmp);
	tmp <- strsplit(tmp, split=",");
	data <- create_test_df(tmp);
	data <- data[,2:ncol(data)];
	return(data);
}

rep_name <- function(base="",rep=1){
	name_list = c();
	for (i in 1:rep){
		name_list <- c(name_list, paste(base, "-", i ,sep=""))
	}
	return(name_list);
}

firstElement <- function(x){x[1]}
secondElement <- function(x){x[2]}
#-------------------------------------------------------------------------
# -- test data
X_test <- create_df("../project_data/test/X_test.txt")
colnames(X_test) <- features[,2]

y_test <- read.table("../project_data/test/y_test.txt",sep=" ",header=F)
colnames(y_test) <- "activity_code"
subject_test <- read.table("../project_data/test/subject_test.txt",sep=" ",header=F)
colnames(subject_test) <- "person_id"

data.test <- cbind(subject_test, y_test, X_test)

## -- test -- endline
# -- train
X_train <- create_df("../project_data/train/X_train.txt")
colnames(X_train) <- features[,2]

y_train <- read.table("../project_data/train/y_train.txt",sep=" ",header=F)
colnames(y_train) <- "activity_code"
subject_train <- read.table("../project_data/train/subject_train.txt",sep=" ",header=F)
colnames(subject_train) <- "person_id"

data.train <- cbind(subject_train, y_train, X_train)

## -- train -- end

# 1. merge train & test data
data.all <- rbind(data.train, data.test) 

# 2. Extract only the measurements on the mean and 
#   standard deviation for each measurement.
data.ext <- data.all[,c(1,2, grep("(mean\\(\\)|std\\(\\))",colnames(data.all))) ];

# 3. Uses descriptive activity names to name the activities in the data set
data.ext <- merge(data.ext, activity_labels,by="activity_code")

# 4. Appropriately labels the data set with descriptive activity names
# -- this is already implemented.

# 5. Creates a second, independent tidy data set with the average of each variable 
# for each activity and each sumject
data.ext.tmp <- data.ext
data.ext.tmp$category <- factor(
		paste(data.ext.tmp$person_id,"-",data.ext.tmp$activity_code, sep="")
	)
# -- sort column order
data.ext.tmp <- data.ext.tmp[,c(70,2,1,3:68)]

data.tidy <- data.frame(category=unique(data.ext.tmp$category))
for (i in 4:ncol(data.ext.tmp)){
	vec = tapply(data.ext.tmp[,i], data.ext.tmp$category, mean)
	data.tmp <- data.frame(category=factor(names(vec)), v=vec)
	data.tidy <- merge(data.tidy, data.tmp, by="category")
	colnames(data.tidy)[i-2] <- colnames(data.ext.tmp)[i]
}
category.split <- strsplit(as.character(data.tidy$category),"-")
data.tidy$id_person = sapply(category.split, firstElement)
data.tidy$activity_code = sapply(category.split, secondElement)
data.tidy <- merge(data.tidy, activity_labels, by="activity_code")
data.tidy <- data.tidy[,c(69,1,70,3:68)]
data.tidy <- data.tidy[order(data.tidy$id_person,data.tidy$activity_code), ]
rownames(data.tidy) = seq(1, nrow(data.tidy)) 

write.table(data.tidy, "tidy_data.txt")

## __endline__