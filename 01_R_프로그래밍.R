x <- c(1:10)
y <- c(0, 1)
y
x+y
x
x <- 1:10
x
z <- rep(1,10
         
         
k<-c([1:10])
x<-c(1:10)
x
x<-c(x,11:15)
x

#로그
n<-(1:9)
p<-log(n+1,10)-log(n,10)
p
#분산
Dev <- (n - mean(n))^2
Dev
#표준편차

#행렬
x<-c(1:10)
x<-matrix(x,2,5)
length(x)
mode(x)
class(x)
attributes(x)

















acctdata <- c(1, 132, 86.7, 2, 50, 50.7, 3, 32, 36.0, 4, 20, 27.9, 5, 19,
              22.8, 6, 11, 19.3, 7, 10, 16.7, 8, 9, 14.7, 9, 5, 13.2)
acctdata
acctdata <- matrix(acctdata, 9, 3, byrow = TRUE)
colnames(acctdata)<-c("digit", "actual", "expected")
acctdata


A <- matrix(c( 6, 1, + 0, -3, + -1, 2),3, 2, byrow = TRUE)
A
t(A)



address <- list("Larry Pace","102 San Mateo Dr.","Anderson","SC",29625)
address


people<-c("Kim","Bob","Ted","Sue","Liz","Amanada","Tricia","Johnathan","Luis","Isabel")
scores<-c(17,19,24,25,16,15,23,24,29,17)
people
scores
quiz_scores <- data.frame(people, scores)
quiz_scores
rm(people,scores)



percapita <- read.csv("kk.csv", header = TRUE)
head(percapita)
summary(percapita[2:9])


x <- c(2,2,2,2,2,2,NA,2,2,2)
x
mean(x)
mean(x, na.rm = TRUE)
