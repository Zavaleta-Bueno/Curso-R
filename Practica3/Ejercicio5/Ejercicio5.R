#Nombre: Zavaleta Bueno Romel 20120236F
#Respuesta5: Autocorrelacion muestral 


vecvar<-seq(2,56, by=3)
vecvar




tmpFn<-function(x){
    k1=1
    k2=2
    x1<-x[(k1+1):length(x)]
    x2<-x[(k2+1):length(x)]
    
    aux1<-x[1:(length(x)-k1)]
    aux2<-x[1:(length(x)-k2)]
    
    media<-mean(x)

    r1<-(x1-media)*(aux1-media)/(x1-media)^2
    r2<-(x2-media)*(aux2-media)/(x2-media)^2
    
    a<-sum(r1)
    b<-sum(r2)
    rsl<-list(a,b)
    
    return(rsl)
}

tmpFn(vecvar)




generalizado<-function(x,k){
  x1<-x[k+1:length(x)]
  aux1<-x[1:length(x)-k]
  media<-mean(x)
  
  rk<-(x1-media)*(aux1-media)/(x1-media)^2
  rsl<-sum(rk)
  return(rsl)
}

