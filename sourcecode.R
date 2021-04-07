#read data
data<-read.csv("heart.csv")

head(data)

# bar chart for age distribution

data$sex<-factor(data$sex) 
dataSex=factor(data$sex,labels=c("female","male")) #description of gender

counts<-table(dataSex,data$ï..age)

barplot(counts, main="age distribution", xlab="Age", ylab="count",legend=rownames(counts),beside=TRUE)


