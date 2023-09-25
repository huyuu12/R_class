####3강####
#  9/25

## 2.2 선형구조 - 리스트 ##
# 데이터 유형 저장, 데이터를 그룹화하는 데이터 구조
# 숫자, 문자, 논리값 등 다양한 데이터 유형

List <- list(1,2,3)
List
typeof(List)
List <- list(1.6, 2.3, 3.5)
List
typeof(List)

# 각각 다른 데이터 형태

List <- list("apple", "banana", "orange", 1, 1.5, TRUE)
List

## 2.3 벡터와 배열 ##
# 벡터 - 값을 저장하고 조작하는 기본데이터 구조
# 숫자, 문자, 논리값 동일한 데이터 유형 보유 1차원 배열
#c()

Vector <- c(1,2,3)
Vector

char_vector <- c("apple", "banana", "orange")
char_vector

logical_vector <- c(TRUE, FALSE, TRUE)
logical_vector

Vector <- c(1,2,3)
Vector
mode(Vector)

List <- list(1,2,3)
List
typeof(List)

##

Vector <- c("aa", 2, 3)
Vector
mode(Vector)

List_1 <- list(1.6, 2.3, 3.5)
List_2 <- list(2.6, 5.3, 7.5)
List_1 + List_2

Vector_1 <- c(1.6, 2.3, 3.5)
Vector_2 <- c(2.6, 5.3, 7.5)
Vector_1 + Vector_2

##
my_list <- list("apple", 3.14, c(1,2,3), TRUE)
my_list

##
#벡터는 1차원데이터
#행렬은 2차원 데이터만 표현가능
#nrow 행의 개수, ncol 열의 개수
#행/열 byrow= T or F
matrix(data = c(1,2,3,4,5,6), nrow =2, ncol = 3)

a = matrix(data = c(1,2,3,4,5,6), ncol=2)
a1 = matrix(data = c(1,2,3,4,5,6), nrow=2)
a2 = matrix(data = c(1,2,3,4,5,6), nrow=2, byrow = TRUE)
a3 = matrix(data = c(1,2,3,4,5,6), nrow=2, byrow = FALSE)
a
a1
a2
a3

##
#rbind()는 행결합 함수 (세로)
#cbind() 열결합 함수 (가로)
rc1 <- c(2,4,5,6)
rc2 <- c(7,8,9,10)
cmatrix <- cbind(rc1, rc2)
cmatrix

rmatrix <- rbind(rc1, rc2)
rmatrix

## 행렬 & 배열 ##

# 벡터의 확장된 개념

amatrix <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3)
amatrix

bmatrix <- matrix(c(2,5,-6,1,-4,2,-3,8,7), nrow = 3, byrow = TRUE)
bmatrix

amatrix + bmatrix #행렬의 각 원소끼리 합(행렬합)

2*amatrix # 행렬의 각 원소를 2배

amatrix*bmatrix # 행렬의 각 원소끼리 곱

amatrix%*%bmatrix # 행렬의 곱

sqrt(amatrix) #원소의 제곱근 (음수에 대해서 NaN생성)

amatrix^2 # 원소의 거듭제곱

##
#amtrix함수의 dimnames인자를 이용해 행/열 이름

m = matrix(c(1,2,3,4), nrow=2)
m
row_names <- c("Row1", "Row2") #(세로)
col_names <- c("Col1", "Col2") #(가로)
dimnames(m) = list(row_names, col_names) #dimnames
m
##

matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3)
array(data = c(1,2,3,4,5,6), dim = c(2,2,3))
#1차원 벡터는 1차원 배열
#데이터 분석할떄는 배열사용
#2차원 행렬 = 2차원 배열

#리스트, 배열, 행렬, 벡터

#행렬 & 배열
#일반적인 연산 가능
a = array(data = c(1,2,3,4,5,6), dim = c(2,2))
b = array(data = c(1,2,3,4,5,6), dim = c(2,2))
cbind(a,b)
rbind(a,b)

#배열에 이름 넣기
my_array <- array(1:12, dim = c(2,3,2))
row_names <- c("row1", "row2")
col_names <- c("col2", "col2", "col3")
slice_names <- c("slice1", "slice2")

dimnames(my_array) <- list(row_names, col_names, slice_names)
#이름 없앤 경우
dimnames(my_array) <- list(NULL, col_names, slice_names)


## 인덱싱 2.4 ##
#특정값을 추출하기 위해 위치나 인덱스 지정
#문자, 리스트, 행렬, 배열 
a = "abcdef"
substr(a,1,2)

#리스트 인덱싱
a <- list(1,2,3,4,5,6)
a[1]
a[-1]
a[1:3]
mode(a[1]) #  --> list  계산 불능
mode(a[[1]])
typeof(a[[1]]) # --> numeric

#벡터 인덱싱
a1 <- c(1,2,3,4,5,6)
a1[1] # 보통 선호
a1[[1]]
a[1]


#배열 인덱싱
a = array(data = c(1,2,3,4,5,6), dim = c(2,3))
a[2]
a[1,2]
a[1:2, 2:3]
a

#인덱싱 비교
my_list <- list("apple", 3.14, c(1,2,3), TRUE)
my_list
my_list[[3]][2] #NA
my_list[3]
my_list[[3]]
mode(my_list[3])  #list
mode(my_list[[3]])  #numeric
mode(my_list[[3]][2]) # "

my_vec <- c("apple", 3.14, c(1,2,3), TRUE)
my_vec[[3]][2]
my_vec[3]
my_vec[[3]]


my_array <- array(c(5,3,1,5,7,8,10), dim = c(2,3))
my_array[1,2]: my_array #배열의 첫 번째행, 두번쨰 열에 접근
my_array[2,1]: my_array #배열의 두번쨰 행, 첫번째 열에 접근
my_array[1,]: my_array #배열의 첫번째 행에 접근
my_array[,2]: my_array #배열의 두번째 열에 접근

my_array <- array(1:24, dim = c(3,4,2))
my_array
my_array[2,3,1]
my_array[3,,2]
my_array[,2:3,]
my_array[2,3,1]
my_array[3,,2]
my_array[,,2]

#인덱싱 비교
#5와 16 각각 추출
A<-array(data = c(1,2,3,4,5,6,7,8,9,10), dim =c(2,5))
B<-array(data = c(11,12,13,14,15,16,17,18,19,20),dim = c(2,5))
A
B
C <- rbind(A,B)
C
C[1,3]
C[4,3]


#2.5 데이터 프레임
city = c("Seoul", "Busan", "Daegu","Seoul", "Busan", "Daegu", "Ulsan")
pm25 = c(18, 21, 21, 17,8, 11, 25)
df <- data.frame(city = city, pm25 = pm25)
city
df$city  # == df[[1]]
df$city[1:3]


# (1)
AB = c("A","B","B","B","B","A","A","A","A","A","B","B")
AB

a = c(5000, 12000,13000, 8000, 9000, 3000, 5000, 4000, 4500, 6000, 8000, 8500)
a
b = c(2500, 5000, 6000, 5500, 7000, 4600, 3000, 2500, 3400, 4700, 6400, 4400)
b

#(2)
a = array(c(1:32), dim= c(4,8))
a

#(3)
a = array(c(1:32), dim = c(2,4,2,2))
a

#(4)
a[2,2,1,2]
a[2,3,2,2]

#(6)
a = array(c(1:12),dim =c(4,3))
b = array(c(13:24), dim = c(4,3))
a
b
cbind(a,b)
rbind(a,b)

#(7)

row_names <- c("1", "2", "3", "4") #세로
col_names <- c("1", "2", "3")
dimnames(a) = list(row_names, col_names) #dimnames
a

row_names <- c("1", "2", "3", "4")
col_names <- c("1", "2", "3")
dimnames(b) = list(row_names, col_names) #dimnames
b

a = c(5000, 12000,13000, 8000, 9000, 3000, 5000, 4000, 4500, 6000, 8000, 8500)
a
b = c(2500, 5000, 6000, 5500, 7000, 4600, 3000, 2500, 3400, 4700, 6400, 4400)
b
df= data.frame(A = a, B=b )
df