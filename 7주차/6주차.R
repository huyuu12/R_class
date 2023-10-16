####다시 보기####
id = c(1,2,3,4,5)
gender = c("M", "F","F","M","M")
major = c("Eng", "Math", "Com", "Eng", "Busi")
salary = c(2500, 2800, 2500, 3000, 2600)

survey = data.frame(ID = id, Gender = gender, Major = major,
                    Salary= salary, stringsAsFactors = F)
survey


head(survey,n=3) #survey의 내용을 앞에서 3행만큼 출력
tail(survey,n=3) #survey의 내용을 뒤에서 3행만큼 출력
survey$Salary #Salary열을 벡터구조로 추출
survey[["Salary"]] #Salary열을 벡터구조로 추출
survey["Major"] #Major열 추출
survey[2] #2열을 데이터 프레임 구조로 추출


#변수 추가
survey$score = c(200,300,400,500,600)
survey

survey$ss = survey$Salary + survey$score
survey


#데이터프레임 분석
#변환할 변수 = as.변환 값(변환할 변수)

        
summary(survey$ID)
mode(survey$ID)  #수치형태 ID는 고유값임

survey$ID = as.factor(survey$ID)
mode(survey$ID)
survey$ID = as.integer(survey$ID)
mode(survey$ID)
survey$ID = as.logical(survey$ID)
mode(survey$ID)
survey$ID = as.character(survey$ID)
mode(survey$ID)

summary(survey$ID)
#숫자형 문자형으로 수정하는 것이 중요
#변수명

names(survey)
names(survey)[names(survey)=="ss"]="Sum" #ss -> Sum 변수명 변경


#데이터프레임에 대한 인덱싱
# 하나의 변수를 가져올땐 $
# 여러개의 변수를 가져올땐 []

survey[,c(1,2)] # 1,2번쨰 변수 출력
survey[,c(-1,-2)] #1,2번쨰 변수 제외 출력

survey[survey$Gender == "F",]
survey[survey$Major == "Eng" & survey$Salary > 2600,]  #Major이 Eng, Salary>2600


##Rbind Cbind
survey

nrow(survey)
ncol(survey)
dim(survey)
names(survey)
colnames(survey)

survey1<- data.frame(ID = id[1:3], Gender=gender[1:3],Major=major[1:3],
                     Salary= salary[1:3], stringsAsFactors = F)
survey1 

survey2<- data.frame(ID = id[4:5], Gender=gender[4:5],Major=major[4:5],
                     Salary= salary[4:5], stringsAsFactors = F)
survey2


#subset(데이터 프래임, 조건, select=c(도출하고 싶은 변수명1, 도출하고 싶은 변수명2))

survey <- subset(survey,)
survey
survey <- subset(survey,survey$ID > 2)

names(survey)
survey_only <- subset(survey, survey$Salary > 2500, 
                      select = c("Major", "Salary","Gender"))
print(survey_only)


#변수 삭제

survey$Gender<- NULL #열 삭제
survey


library(tidyr) #사용패키지
separate

name_age_df <- data.frame(
  Name = c("Kim Cheol-soo", "Lee Cheol-soo", "Kim Young-hee", "Lee Young-hee",
             "Kim Min-jun", "Park Min-jun", "Kim Ji-young", "Park Ji-young"),
  Age = c(20, 24, 21, 24, 35, 40, 34, 35),
  stringsAsFactors = F
 )

name_age_df

#separate(데이터 프레임, col= "지정한 변수 이름", into =c("생성변수1", "생성변수2"), sep="나눌 기준기호")
name_age_df <- separate(name_age_df, col = "Name", into = c("LastName", "FirstName"), 
                        sep= "-")
print(name_age_df)
#Name을 넣는다. into는 첫번째 두번쨰 벡터로 만들어줌.
#분리했을때 좌측이 첫번째 값, 우측이 두번째 값.
#sep= "-" 은 "-"을 찾아서 분리를 하라는 의미



#기존에 있던 데이터 불러오기
#엑셀, text, csv
#키 
#키 
#키-
#  키/


# data <- read.csv("data.csv", header=?헤더가 존재하면 T 없으면 F,
#                   stringsAsFactors=?문자열 변수를 요소로 변환하면 T 아닐시 F,
#                   fileEncoding=?)
read.csv("C:/Users/KJH/Desktop/재난안전.csv")

data <- read.csv("C:/Users/KJH/Desktop/재난안전.csv", header=T, #헤더를 F로 하면 새로운 변수명이 생김
                  stringsAsFactors=T, fileEncoding = "cp949") #"cp949"는 한국어 해결
#stringsAsFactors은 각각의 요소로 인정하냐, 하나의 리스트로 보냐에 따라 다름
data


#R에서 저장하는 방법

write.csv(survey,"C:/Users/KJH/Desktop/재난안전_저장.csv", row.names=F)

write.csv(survey,"C:/Users/KJH/Desktop/재난안전_저장v2.csv", row.names=T)
##T와 F의 차이 - 몰라

#문제풀이와 비슷한 난이도의 시험문제
#손코딩
#함수, 인덱싱에 대해 자세히 공부
