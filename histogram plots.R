cholera<-read.csv(file.choose(),header = TRUE)
blood_vidal<-read.csv(file.choose(),header = TRUE)
malaria<-read.csv(file.choose(),header = TRUE)
dengue<-read.csv(file.choose(),header = TRUE)
swine_flu<-read.csv(file.choose(),header = TRUE)

par(mfrow=c(2,3))
plot(cholera$month.year,cholera$Count,xlab="month",ylab="count",main="Cholera","h")
plot(blood_vidal$month.year,blood_vidal$Count,xlab="month",ylab="count",main="BloodVidal","h")
plot(malaria$month.year,malaria$Count,xlab="month",ylab="count",main="Malaria","h")
plot(dengue$month.year,dengue$Count,xlab="month",ylab="count",main="Dengue","h")
plot(swine_flu$month.year,swine_flu$Count,xlab="month",ylab="count",main="Swine Flu","h")

