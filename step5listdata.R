step5listdata <- list()

for (i in 3:ncol(step4data)){
    step5data[[(i-2)]] <- tapply(step4data[,i], list(step4data$subject, step4data$activity), mean)
}

names(step5data) <- colnames(step4data[3:ncol(step4data)])
