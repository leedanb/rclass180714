#data.frame (85쪽)
stu<-c("지훈","유진","동현","민지")
stu
eng<-c(90,80,60,70)
eng
math<-c(100,30,50,20)
math
df_stu<-data.frame(stu,eng,math)
df_stu


rm(df_stu)
rm(eng)
rm(math)
rm(stu)

#data_frame 한번에 만들기
df_stu<-data.frame(stu=c("지훈","유진","동현","민지"),
                   eng=c(90,30,50,70),
                   math=c(50,60,80,56),
                   class=c(1,1,2,2))
df_stu
#개체를 생성할 때는 <- 화살표를 쓰고, 속성값에 대한 할당을 할 때는 = 이꼴을 쓴다.
