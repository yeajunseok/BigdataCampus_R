###
#R에서의 입력과 출력
#실행 도중 데이터 입력 받기 -> readline() -> 문자형 취급
x<-scan()


getOption("digits")
pi
options(digits = 4)


CV <- function(x)sd(x) / mean(x)
x
CV(x)


percapita<-read.csv("C:/Temp/aa.csv", header=TRUE)

median(percapita[2:9])
lapply(percapita[2:9], median)
apply(percapita[2:9], median)

class1<-c(17,18,12,13,15,14,20,11,16,17)
class2<-c(18,15,16,19,20,20,19,17,14)
class3 <- c(17,16,15,18,11,10)
classes <- list(class1, class2, class3)
lapply(classes, length)
sapply(classes, length)
sapply(classes, mean)
sapply(classes, summary)


pythag <- function(x) {
  s<-x[1]
  t<-x[2]
  a<-t^2 - s^2
  b <- 2 * s * t
  c <- s^2 + t^2
  cat("The Pythagorean triple is:",a,b,c,"\n")
}
input <- scan()


quadratic <- function(x) {
  a<-x[1]
  b<-x[2]
  c<-x[3]
  
  disc<-sqrt(b^2 - 4*a*c)
  root1 <- 
  cat("The discriminant is:",disc,"\n")
  cat("Root1: ",,"\n")
  #cat("Root2:",,"\n")
}

quadratic(qqq)