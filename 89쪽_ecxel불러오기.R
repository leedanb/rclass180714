##89쪽 엑셀파일 불러오기
install.packages("readxl")
library(readxl)
df_exam<-read_excel("excel_exam.xlsx")
df_exam

#경로로 불러오기
df_exam<-read_excel("C:\\R\\project180714\\excel_exam.xlsx")

#데이터에서 평균구하기
mean(df_exam$english)
mean(df_exam$science)
#df_exam파일에 있는 id속성만 보고 싶다.
df_exam$id

#엑셀 파일 첫 번째 행이 속성명이 아닐때
dt_exam<-read_excel("excel_exam_a.xlsx")
dt_exam
#첫 번째 행의 자료가 유실됨
#자료 유실을 피하는 방법
dt_exam<-read_excel("excel_exam_a.xlsx", col_names = F)
dt_exam
#col_names = F  ;; '열 이름(Coulmn Name)을 가져올 것인가?'라는 질문에
#'그렇지 않다'고 답한 것이다.

#연습 한 번 더
df_exam_novar<-read_excel("C:\\R\\project180714\\excel_exam_novar.xlsx")
df_exam_novar
df_exam_novar<-read_excel("C:\\R\\project180714\\excel_exam_novar.xlsx", col_names = F)
df_exam_novar
