###3번째 실습 - 함수 및 요약 통계
##실습0-소수 출력
primality <- function(x) {
  stopifnot(x >= 2) # x가 2보다 작다면 에러를 반환
  limit <- trunc(sqrt(x) + 1)
  testvec <- 2:limit
  results <- x %% testvec
  check <- any(results == 0)
  outcome <- "Yes."
  if(check == TRUE) outcome <- "No."
  if(x == 2) outcome <- "Yes."
  cat("Is",x,"prime?",outcome,"\n")
}

i<-c(3:10)
count <- 0
for(a in i){
  
  primality <- function(x) {
    stopifnot(x >= 2) # x가 2보다 작다면 에러를 반환
    limit <- trunc(sqrt(x) + 1)
    testvec <- 2:limit
    results <- x %% testvec
    check <- any(results == 0)
    outcome <- "Yes."
    if(check == TRUE) outcome <- "No."
    if(x == 2) outcome <- "Yes."
    cat("Is",x,"prime?",outcome,"\n")
    
    if(outcome == "Yes.") {
      count <<- count + 1
    }
  }
  primality(a)
  
}
