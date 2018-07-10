#실습문제1
#1)
x1 <- c(1:10)
#2)
aaaa <- 10
x2 <- x1+aaaa
#3)
xx <- x1 ^ 2
#4)
xc <- c(x1,x2)


##실전문제2
height <- c(181,166,157,192, 161)
names(height) <- c("JOHN", "TOM", "JANE", "RABBIT", "HILL")
names(height)<-NULL
height

##실선문제3
vector <-c(12,17,222,18,30)
#1
v1 <- vector[c(1,3,5)]
v1
#2
v2 <- vector[c(-1,-3)]
v2
#3
v3 <- replace(vector, 2, 5)
v3
#4
v4 <- replace(vector, 4, 40)
v4


##실전문제4
#1)
vector1 <- seq(1,100,5)
#2)
vector2 <- rev(vector1)

##실전문제5
x<-c(1,2,3,4,5,4,3,2,1)
#a)
xm1 <- matrix(x, 3,3)
#b)
qqq <- 10
xm2<-xm1+qqq
#c)
#d)
xt<-t(xm1)
xt
#e)
xi<-solve(xm1)
xi
#f)


##실전문제6
#a
n<-(1:9)
p<-log(n+1,10)-log(n,10)
#b
m<-sum(n*p)
#c
v<-sum(p*(n-m)^2)
v
