##2번째 실습-R
#실습문제1-ifelse
a <- c(1:5)
a
b <- ifelse(0 == a%%2, "even", "odd")
b
ab <- data.frame(a,b)
ab

x <- c(-2,-1,0,1,2)
x
y <- ifelse(x<0, "Negative", ifelse(x>0,"Positive","Zero"))
y
xy <- data.frame(x,y)
xy

#실습문제2 - for
i <- c(1:10)
for(n in i) print( 5*n + 10)

#실습문제3 - for&while
k <- c(1:10)
m=0
for(i in k) {
  l <- i+m
  cat("cummulative summation from 0 to",i,l,"\n")
  m <- l
}

z <- 0
i <- 1
while(i <= 10) {
  z=z+i
  cat("cummulative summation from 0 to",i,z,"\n")
  i = i+1
}

#실습문제4 - repeat
a <- 1
repeat{
  a = a + 5
  if (a>50) {
    break
  }else{
    print(a)
  }
}
#실습문제5 - repeat
x <- 1
a <- 1
repeat{
  if(a > 10) break
  print(x)
  x = x+1
  a = a+1
  #factorial(x)
}

#실습문제5 - repeat
x <- 1
repeat{
  if(x > 15) break
  cat("factorial(",x,")","=",factorial(x),"\n")
  x = x+1
}

##실습문제6
#a)
result <- 1
m <-c(1:10)
for(i in m) {
  result = result * i
  print(result)
}
#b)
result <- 1
i<-1
while(i < 10) {
  result = result * i
  i = i + 1
  print(result)
}
#c)
result<-1
x <- 1
repeat{
  if(x > 10) break
  result = result * x
  x = x + 1
  print(result)
}

##실습문제7
height=seq(171,180,by=1)
weight=seq(62,80,by=2)
data1=c(weight+height)
student_name=c("a","b","c","d","e","f","g","h","i","j")
feature_name=c("height","weight")
m1<-matrix(c(height,weight),ncol = 10)
colnames(m1)<-student_name
rownames(m1)<-feature_name








