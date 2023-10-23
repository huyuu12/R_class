#1
vec <- c(0:10)

#2
vec2 <- c(10:20)
rmatrix <- cbind(vec,vec2)
rmatrix

#3
m<- cbind(vec,vec2)
m

matr <- rmatrix2
matr

#4

vec3 <- c(20:30)
vec3

vec <- array(data = vec, dim = c(5,2))
vec2 <- array(c(10:20), dim = c(5,2))
vec3 <- array(c(20:30), dim = c(5,2))
vec

#5
name = c("Kim", "Park","Lee")
Kor = c(100, 80, 80)
Eng = c(60,40,80)
Math = c(50, 100, 80)
Phy = c(40,30,20)
Che = c(40,30,20)
Bio = c(40,20,10)
Earth = c(40,30,50)
score <- data.frame(이름= name, 국어=Kor, 영어 = Eng, 수학=Math, 물리= Phy, 화학= Che, 생명=Bio, 지구= Earth, stringsAsFactors = F)
score


score$mean = (score$국어+score$영어+score$수학)/3
score
subset(score, score$mean=>80, select=c("이름"))




df$총금액 <- df$진료금액+df$처방전금액
write.csv(df, "경로", row.names = T)
