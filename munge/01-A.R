# Example preprocessing script.
x<- data.table(X1718AR.ClassLevel[,2:4])[, lapply(.SD, sum), by = STUDENT_CLASSIFICATION_BOAP]                                              #Include columns 2,4 and summarize
y<- data.table(X1718AR.ClassLevel[,.SD,.SDcols=c(2,5)])[, lapply(.SD, mean), by = STUDENT_CLASSIFICATION_BOAP]   
# write.xlsx(ar1718AR.ClassLevel, "output/ar1718AR_SumClassLevel.xlsx", row.names=F, sheetName="AR_SumClassLevel", append=FALSE)