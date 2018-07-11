###03함수 및 요약 통계

##4-0 좀더 강력한 함수 만들
#소수 찾기
primality <- function(x){
  stopifnot(x >= 2)
  limit <- trunc(sqrt(x)+1)
  testvec <- 2:limit
  results <- x %% testvec
  check <- any(results == 0)
  outcome <- "Yes."
  if(check == TRUE) outcome <- "No."
  if(x == 2) outcome <- "Yes."
  cat("Is",x,"prime?",outcome,"\n")
}


##4-1 중심성향 측정
a=1:10
scale(a)
mean(a)


##4-2 변동 측
aa = matrix(1:15, 5, 3)
aa
var(aa)

var(percaptia[2:9])

#범위
load("weights.rdata")
range(weights)
range.diff<-function(x) max(x) - min(x)
range.diff(weights)

#중앙값과 표준 절대 편차
mad(weights)
mad(weights, center = mean(weights))
sd(weights) #표준편차
hist(weights)


##4-3 공분산, 상관계수
Region <- c(1:10)
Region
Adverising <- c(5.5, 5.8, 6.9, 7.2, 6.3, 6.5, 6.4, 5.7, 6.1, 6.8)
Adverising
Sales <- c(101,110,120,125,117,118,120,108,115,116)
Sales
cov(Adverising, Sales) #결과값이 양수이므로 상관이 있다.
cor(Adverising, Sales)



##4-4 대칭도 측정(혹은 비대칭도 측정)
install.packages("psych")
library(psych)
Mileage=read.csv("qwe.csv",header = TRUE)
head(Mileage)
skew(City)
