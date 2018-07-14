##  문자열에서 필요한 값 추출하기
# substr("문자열", 시작인덱스, 끝인덱스) 인덱스 시작은 1
# 아래 - 부분도 한자리로 인식함
stu <- "800101-1"
sub <- substr(stu, 8,8)
sub
# 실행하면 1이 찍힘
# 이것을 통해서 주민번호를 통한 성별 추출이 가능함
# 1, 3 남자  2, 4 여자 5, 6 은 외국인...그외는 잘못된 값
# 문제
# 위 문법을 이용해서 주민번호를 입력하면
# 남, 여, 외 이렇게 출력되는 객체(함수)를 완성하시오


#내 답안 if-else버전
whatsex<-function(x){
    stu<-x
    sub<-substr(stu,8,8)
    res<-if(sub==1)"남" else
         if(sub==2)"여"else
         if(sub==3)"남"else
         if(sub==4)"여"else
         if(sub==5)"외"else
         if(sub==6)"외"
     return(res)
   }
whatsex("800101-1")
#[1]"남"

#if-else버전 빠르게 생략 심화
whatsex<-function(x){
  stu<-x
  sub<-substr(stu,8,8)
  return(if(sub==1)"남" else
    if(sub==2)"여"else
      if(sub==3)"남"else
        if(sub==4)"여"else
          if(sub==5)"외"else
            if(sub==6)"외")
}
whatsex("800101-1")

#내 답안switch함수버전
whatsex<-function(x){
     sex<-substr(x,8,8)
     res<-switch(
         sex,
         "1"="남",
         "2"="여",
         "3"="남",
         "4"="여",
         "5"="외",
         "6"="외"
       )
     return(res)
   }
whatsex("920803-2")
#[1] "여"

#switch함수버전빠르게 심화
whatsex<-function(x){
  sex<-substr(x,8,8)
  return(switch(
    sex,
    "1"="남",
    "2"="여",
    "3"="남",
    "4"="여",
    "5"="외",
    "6"="외"
  ))
}
whatsex("800101-1")

#if-else응용
whatsex<-function(x){
  sub<-substr(x,8,8)
  return(if(sub==1 | sub==3)"남"else
    if(sub==2 | sub==4)"여"else
      if(sub==5 | sub==6)"외")
}
whatsex("800101-1")

#switch빠르게응용
whatsex<-function(x){
  sex<-substr(x,8,8)
  return(switch(
    sex,
    "1"="남",
    "3"="남",
    "2"="여",
    "4"="여",
    "5"="외",
    "6"="외",
    "잘못된값"
  ))
}
whatsex("800101-8")

#switch빠르게응용2
whatsex<-function(x){
  return(switch(substr(x,8,8),
    "1"="남",
    "3"="남",
    "2"="여",
    "4"="여",
    "5"="외",
    "6"="외",
    "잘못된값"
  ))
}
whatsex("800101-8")

#하나를 받아서 풀어나가는 식
gender<-(x){
  return("남자")}
#위 식을 기본으로 두고 함수를 천천히 만들어 가자!
