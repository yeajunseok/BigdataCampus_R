2^2
2*2
2/2
2+2
2-2
#c
x<-c(1:10)
x

#저장클래스를 확인
mode(x) 

x <- c("Hello","world","!")
x
x<-c(1,3)
x
x <- c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
x
x <- list("R","12345",FALSE)
x
mode(x)

#순서 연산자: seq(1:10) == c(1:10)
seq(1:10)
x<-c(1:10)
x^x

#차원만들
dim(x) <- c(2,5)
x
x <- list("R","12345",FALSE)