###04 표와 그래프 만들기
faithful
head(faithful)
waiting<-faithful[,2]
waiting
table(waiting)

breaks = seq(40,100,by=5)
breaks
wait_time<-cut(waiting, breaks, right = FALSE)
wait_time
table(wait_time)
sort(table(wait_time))
cbind(sort(table(wait_time)))


#attach() 하나하나 전부 쪼갤수 있다.
#load("위치") 또는 파일 열기로 열자.
attach(dataset)
dataset
table(Sex, Age)

grades
head(grades)

attach(grades)
grades
table(Gender, Grade)


#원형 도표와 막대 도표
Color <- c("Silver","","")

Car_Colors <- data.frame(Color = factor(), Percent = numeric())
Car_Colors <- edit(Car_Colors)
attach(Car_Colors)
pie(Percent)
pie(Percent, col = Color)
names(Percent) <- Color
pie(Percent, col = colors, main = "Pie Graph of Auto Color Preferences")
barplot(Percent, col = Color, main = "Bar~~~")
attach(grades)
barplot(table(Grade), col = c("red", "green", "blue"), main = "Grade Level")

#박수 도표
attach(dataset)
boxplot(Age, main = "Boxplot for Age")
quizzes
boxplot(quizzes)

#히스토그램
attach(faithful)
hist(waiting)

#선 그래프
attach(Min_Wage)
Min_Wage
plot(Value, type = "o", xlab = "Year", col = "blue", main="Min")
plot(Year, Value, type = "o")

#산점도
KKK <- read.csv("GPA.CSV", header = TRUE)
attach(KKK)
plot(Hours, GPA)
plot(Hours, GPA, abline(lm(GPA~Hours)), main ="Scatterplot of Hour and GPA")

#그래프 저장하고 사용하기
plot(iris)




#put histograms on the diagonal
panel.hist <- function(x, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
  rect(breaks[-nB], 0, breaks[-1], y, col = "cyan", ...)
}

## put (absolute) correlations on the upper panels,
## with size proportional to the correlations.
panel.cor <- function(x, y, digits = 2, prefix = "", cex.cor, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- abs(cor(x, y))
  txt <- format(c(r, 0.123456789), digits = digits)[1]
  txt <- paste0(prefix, txt)
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}

## put linear regression line on the scatter plot
panel.lm <- function(x, y, col=par("col"), bg=NA, pch=par("pch"), cex=1, col.smooth="black", ...) {
  points(x, y, pch=pch, col=col, bg=bg, cex=cex)
  abline(stats::lm(y~x), col=col.smooth, ...)
}

pairs(iris,
      lower.panel = panel.lm, # 아래쪽 산점도에 선형 직선 추가
      upper.panel = panel.cor, # 위쪽에는 상관계수 숫자 (상관계수에 크기 비례)
      diag.panel = panel.hist, # 대각선에는 히스토그램
      pch="*", # 점 모양은 * 로
      main = "scatter-plot matrix, correlation coef., histogram"
)
