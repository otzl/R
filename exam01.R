# 벡터 : 동일한 자료가 일차원으로 나열된것
vec1 <- c(10,20,30,40,50)
vec1
vec2 <- c("사과",100,TRUE) # 문자가 하나라도 들어가있으면 문자로 인식. 문자열이 우선순위 제일 높음.
vec2
vec3 <- c(100.3,33,TRUE,FALSE) # 숫자 > 논리
vec3

v_no <- seq(1,7)
v_name <- c('Apple','Peach','Banana','Grape','Kiwi','Orange','Mango')
v_price <- c(500,200,100,300,150,250,450)
v_stock <- c(5,2,4,7,5,3,8)

# 데이터프레임 만드는 방법 = data.frame
sales <- data.frame(v_no,v_name,v_price,v_stock)
sales

# 자료구조를 좀 더 보기좋게 보는 방법
View(sales)

# DataFrame에서 원하는 데이터만 조회하기
# sales 데이터프레임에서 v_name 값만 뽑아서 보기
sales['v_name']

sales$v_name
sales[3,2]
sales[3, ]
sales[ ,2]

sales$v_name[1:5]
sales$v_name[3]

# 데이터프레임에서 컬럼의 개수를 알 수 있는 방법
ncol(sales)
sales[1,1:ncol(sales)]
# 데이터프레임에서 행의 개수를 개수를 알 수 있는 방법
nrow(sales)
# 데이터프레임에서 컬럼의 이름들만 추출하는 방법
names(sales)

# 다양한 함수를 데이터프레임에 적용하기
sum(sales['v_price'])
sum(sales$v_price)

mean(sales$v_price)
round(mean(sales$v_price), digits = 2)
min(sales$v_price)
max(sales$v_price)
range(sales$v_price)

# score 벡터 만들기
No <- seq(1,10)
Name <- c('이은비','김서아','장하윤','유이서','나서윤','이지안','박나은','황유나','김하율','윤시아')
Kor <- c(80,76,26,61,44,19,53,81,26,64)
Eng <- c(8,76,69,18,82,56,48,14,73,83)
Math <- c(65,27,100,763,37,77,73,19,74,60)
Score <- data.frame(No,Name, Kor, Eng, Math)
Score
View(Score)

# Kor열 데이터만 출력하세요
Score$Kor
Score[ ,3]

# Eng열 데이터만 출력하세요
Score$Eng
Score[ ,4]

# 컬럼개수를 출력하세요
ncol(Score)

# 행개수를 출력하세요
nrow(Score)

# 컬럼명을 출력하세요
names(Score)

# Kor의 평균점수를 소수 첫째자리까지
round(mean(Score$Kor), digits = 1)

# Eng 점수 중 가장 높은 점수
max(Score$Eng)

# Math 점수 중 가장 낮은 점수
min(Score$Math)

# 내가 작업하는 공간에 파일들의 목록보기
list.files()

# 엑셀 데이터파일을 읽을 수 있는 함수들이 모여있는 패키지 다운로드하기
install.packages("readxl")


# 패키지를 로딩하여 사용하기
library(readxl)

# 함수를 사용하여 파일 불러오기
score <- read_excel("score.xlsx")

# csv파일을 읽어와서 데이터프레임 저장
titanic <- read.csv("titanic.csv")
titanic
View(titanic)

list.files()

# 문자열 데이터를 범주형으로 읽어들이는 옵션
titanic_2 <- read.csv("titanic_2.csv", stringsAsFactors = TRUE)
titanic_2

list.files()

heart <-read.csv("heart_failure_clinical_records_dataset.csv", stringsAsFactors = TRUE)





















