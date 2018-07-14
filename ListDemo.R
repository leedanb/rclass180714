#list(82쪽)
#vector is atomic vector(원자값으로 이뤄진 것이 벡터)
#list is recursive vector(벡터 안에 또 벡터가 있다는 뜻) 
#점(스칼라) // a return(,,,,)<-여러개의 데이터를 리턴으로 합쳤으므로 얘도 하나의 점이 된다.
#점 - 선 - 면 - 큐브

x<-c(1,2,3)
x[2]
lst<-list("홍길동",175.6,5000,T)
lst
y<-c("홍길동",175.6,5000,T)
y
lst[[1]]
y[2]
lst<-list(name="홍길동",height=176.6,sal=5000,employee=T)
lst
lst$name
length(lst)
