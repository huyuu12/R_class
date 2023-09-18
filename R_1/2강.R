

####1강 다시보기####

a = c(1,2,3,4,5,6)

sum(c(1,2,3,4,5,6,7,8,9,10))

seq(from=1, to=5, by=2) #1부터 5까지 2개씩 증가
seq(1,5,by=2)

seq(0,1,length.out = 1000) #0부터 1까지 1000개가 되는 자료 생성

rep(c(1,2,3), times=2)#1,2,3을 두번 반복하는 vector

rep(c(1,2,3), each=2) #1,2,3의 개별 원소를 두번 반복하는 vector

#print#
a=3
b=4
print(a,b)

a<-3
print(a)

#paste#
paste(1,2,3,4,5)  #값을 이어서 구분시킨다.
print(paste(1,2,3,4,5))

paste0(1,2,3,4,5)  #간격이 0
print(paste0(1,2,3,4,5))

print(paste0(a,"님의 점수는 ",b,"점입니다."))

#sep#
paste(3,4,5,6,7, sep = "-")  #공백에 "-" 첨가
paste0(3+4,4,5,6,7, sep = "-")  #마지막에만 "-" 첨가

####2강####
##??ggplt2

x <- 1:100  #1부터 100까지 값 출력

head(x)  #처음부터 6개의 어떤 값 출력

head(x, n=7)  #7까지의 값 출력

tail(x)

tail(x, n=7)

###

#sample(x, size, replace = F, prob = NULL)

sample(10)  #1부터 10까지 임의로 섞어서 추출

sample(45, 6)  #45까지 6개를 임의로 추출

sample(10, 3, replace = T)  #동일한 확률 (1/10)로 복원 추출

sample(10, 3,prob = (1:10)/55)  #10개중 3개를 임의로 복원추출 하는데 추출될 확률은 (1:10)/55로 각각 다름
1:10
sample(10,3,prob = c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))


###
#정규분포
runif(n, min, max)  #최소와 최대 사이의 균일 분포에서 n개의 연속형 난수를 생성
runif(1000, 0, 100) 

rnorm(n, 평균, sd)  #주어진 평균과 표준편차 sd를 갖는 정규분포에서 n개의 난수를 생성
rnorm(3, 10 ,2) 

rbinom(n, size, prob)  # 주어진 시행 횟수와 성공 가능성 prob를 사용하여 이항 분포에서 n개의 난수를 생성함.
rbinom(3, 10, T)


#

####2강 문제풀기####

seq(1,100,5)
rep(c(1,2,3,4,5), times=100)
rep(c(1,2,3,4,5), each=100)
##
sample(10,3, replace = F)
sample(49,6, replace = F)
sample(10, 3, replace = T)
sample(10, 3,replace = T, prob = (1:10)/55)
sample(10,3,prob = c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))
##
runif(100, 50, 100) 
rnorm(200, 100, 15)
rbinom(1, 500, 0.1) # 500명 중에 1명이 걸릴 확률 / 10명중 1명이 걸린다.

rbinom(10,500,0.1) #500명중
sum(rbinom(500,1, 0.1))
#
####중간 꿀팁####
rm(a) #a삭제
rm(list=c("a", "c")) #a,c 삭제
rm(list=ls()) #모든 값 삭제



getwd()
setwd("C:\\Users\\User\\Desktop")
setwd("C:/Users/User/Desktop")


####chapter####

List_1 <- list(1,2,3)
List_2 <- list(1.6, 2.3, 4.6)
List_1
List_2
List_3 <- list("banana", "apple", "orange", 1, 1.3, T)
List_3

Vectoe <- c(1,2,3, "moon")
Vectoe
char_vector <- c("apple", "banana", "orange", 1,2,3)
char_vector
logical_vetor <- c(T,F,T,1,2,3,"hi")
logical_vetor
# -> 모두 문자열로 변함.

Vectoe <- c(1,2,3)
char_vector <- c(1,2,3)
logical_vetor <- c(1,2,3)
Vectoe
char_vector
logical_vetor

Vector <- c("aa", 2, 3)
Vector
mode(Vector)

List_1 <- list(1.6,2.3,3.5)
List_2 <- list(2.6,5.3,7.5)
List_1+List_2 #에러

my_list <- list("apple", 3.14, c(1,2,3), T)
my_list
