# sample(1:3,1,replace = TRUE) 하면 1부터 3까지 중에서 랜덤숫자 
# 하나를 반환합니다. 1:3 이 범위고, 1이 갯수, replace = TRUE 는 한번 뽑은
# 숫자를 다시 출력할지 여부인데 True를 주면 다시 뽑힐 수 있습니다. 즉 2
# 가 랜덤으로 나왔어도 다음 회차에서 다시 2가 나올 수 있습니다.
# 이를 이용해서 가위바위보 를 함수로 생성하세요.
# 예제는 아래와 같습니다.
# comVal <- sample(1:3,1,replace = TRUE) 
# myVal <- 2
# rps <- function(comVal, myVal)
# 이김

#ver1.
rps<-function(comVal,myVal){
     res<-if(comVal==myVal)"비김"else
        if(myVal==comVal+1)"이김"else
        if(myVal==1&comVal==3)"이김"else
                 "패배"
     return(res)
}
rps(sample(1:3,1,replace=TRUE),2)
#[1] "비김"

#ver2.
rps<-function(comVal,myVal){
  res<-if(comVal==myVal)"비김"else
       if(myVal==comVal+1)"이김"else
       if(myVal==1&comVal==3)"이김"else
             "패배"
     return(res)
}
kk<-sample(1:3,2,replace=TRUE)
comVal<-kk[1]
myVal<-kk[2]
#[1] FALSE
cat("comVal",comVal,"myVal",myVal,"결과:myVal",rps(comVal,myVal))
#comVal 3 myVal 2 결과:myVal 패배

rps<-function(comVal,myVal){
  res<-if(comVal==myVal)"비김" else
    if(comVal+1==myVal)"이김"else
      if(comVal==3 & myVal==1)"이김" else
        "패배"
  return(c("comVal:",comVal,"myVal:",myVal,myVal,res))
}
rps(sample(1:3,1,replace=TRUE),2)

rps<-function(u,i){
  return(if(u==i)"비김"else
    if(u+1==i)"이김"else
      if(u==3&i==1)"이김"else
        "패배")
  }
kk<-sample(1:3,2,replace=TRUE)  
u<-kk[1]
i<-kk[2]
cat("u",u,"i",i,"i",rps(u,i))

#강사님 해설
rps<-function(x){
    return("이김")
}
rps(3)

rps<-function(x){
  com<-sample(1:3,1,replace=TRUE)
  switch(toString(com-x),
         "0"="tie",
         "1"="win",
         "-2"="win",
         "-1"="lose",
         "2"="lose"
         )
  return(switch)
}
#축소
rps<-function(x){
  return(switch(toString(sample(1:3,1,replace=TRUE-x)),
                "0"="tie",
                "1"="win",
                "-2"="win",
                "-1"="lose",
                "2"="lose"
  ))
}
rps(2)

