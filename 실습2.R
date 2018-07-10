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
z=c()
y=c(1:6)
repeat{

  for(i in 2:6) {
    if(i>6) {
      break
    }else{
      z[1] = y[1]
      z[i] = y[i]*z[i-1]
      cat("factorial(", i-1, ") = ", "\n")
    }
    
  }
}












