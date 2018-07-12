2^2
2*2
2/2
2+2
2-2
#c
x<-c(1:10)
#저장클래스를 확인
mode(x) 
#순서 연산자: seq(1:10) == c(1:10)
seq(1:10)
x<-c(1:10)
#차원만들
dim(x) <- c(2,5)

##1-4 R에서 데이터 처리하기
#자료형을 섞어서 사용한다면 R이 이 자료형을 하나로 강제
x <- c(1, 2, 3, 4, "Pi")
mode(x) #답은 "character"
#백터에 값 더하기! 
#한 가지 요소의 벡터를 더하게 되면 10개의 요소에 동일한 값을 각각 더하는 것
x <- c(1:10)
y <- 10
x+y

x <- c(1:10)
y <- c(0, 1)
x+y

#제곱근 : sqrt()

#나머지 백터 연산.
x <- c(1:10) # 벡터 생성
x <- 1:10 # 둘 중 어느 것을 해도 그 결과는 동일
y <- seq(10) # 순차적인 값 생성
z <- rep(1,10) # 반복되는 패턴 생성

#벡터에 요소 추가하기
x <- c(1:10)
x <- c(x, 11:15)
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
x
length(x)
mode(x)
class(x)
attributes(x)

#행렬의 행과 열 참조: 백터처럼 행렬의 각 요소도 색인값을 사용해서 참조 가능.
x[1,4]
#행과 열에 대한 색인값뿐 만 아니라 지정된 이름도 사용.
colnames(x) <- c("A","B","C","D","E")
x

#행렬 다루
acctdata <- c(1, 132, 86.7, 2, 50, 50.7, 3, 32, 36.0, 4, 20, 27.9, 5, 19,
              22.8, 6, 11, 19.3, 7, 10, 16.7, 8, 9, 14.7, 9, 5, 13.2)
acctdata
acctdata <- matrix(acctdata, 9, 3, byrow = TRUE) #acctdata 벡터를 matrix() 함수를 사용하여 행렬로 생성
acctdata
colnames(acctdata)<-c("digit", "actual", "expected") #이름 지정하기.
acctdata

#역행렬 : solve()

##list
#여러 종류의 자료형을 한꺼번에 다룰 수 있기 때문에 상당히 유용
#여러 자료형을 혼합해서 사용할 수 있으며 목록의 색인은 벡터나 행렬과는 다름
#저자의 이름과 주소, 도시, 주 그리고 우편 번호를 조합한 목록
address <- list("Larry Pace","102 San Mateo Dr.","Anderson","SC",29625)
address

#데이터 프레임: 데이터 프레임은 벡터와 행렬, 목록이 섞인 기능
people<-c("Kim","Bob","Ted","Sue","Liz","Amanada","Tricia","Johnathan","Luis","Isabel")
scores<-c(17,19,24,25,16,15,23,24,29,17)
people
scores
quiz_scores <- data.frame(people, scores)
quiz_scores
#rm() 함수를 사용해서 필요 없는 객체를 워크 스페이스에서 삭제 가능
rm(people,scores)

##데이터 프레임의 값 접근: 
#개별적인 행의 값을 얻기 위해 대괄호 이용
quiz_scores[2]
#데이터 프레임의 이름 + $ + 행의 이름
quiz_scores$scores
#attach() : 각 행을 벡터로 변경
attach(quiz_scores)
scores

#R 데이터 편집기를 사용해서 데이터 프레임 만들기
Min_Wage <- data.frame(Year = numeric(), Value = numeric())
Min_Wage <- edit(Min_Wage)

#CSV
percapita <- read.csv("kk.csv", header = TRUE)
head(percapita)
summary(percapita[2:9])

#누락된 데이터 처리하기
x <- c(2,2,2,2,2,2,NA,2,2,2)
x
mean(x)
mean(x, na.rm = TRUE)
x
