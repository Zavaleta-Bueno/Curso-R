#Nombre : Zavaleta Bueno Romel Rolando 20120236F
#Respuesta 3: El codigo de la funcion nth


nth<-function(a,n){
  
b<-max(which(a))
d<-sum(as.integer(a)) 
  if(d<n)
    return(NA)
return(b)
}



x<-c(1,2,4,2,1,3)


w<-nth(x>1,2)
w



  
  
  