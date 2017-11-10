#Nombre : Zavaleta Bueno Romel Rolando 20120236F
#Respuesta 4: El codigo de la funcion primero y ultimo



#(a)
primero<-function(x,k){
  if(k!=NA || k<1) k=1
  vresl<-x[1:k]
  return(vresl) 
}

ultimo<-function(x,k){
  x<-rev(x)
  if(k!=NA || k<1) k=1
  vresl<-x[1:k]
  return(vresl) 
  
}



#(b)
primero<-function(x,k){
  if(k!=NA || k<1) k=1
  
  if(length(x)<k)return(x);
    
  vresl<-x[1:k]
  return(vresl) 
}

ultimo<-function(x,k){
  x<-rev(x)
  if(k!=NA || k<1) k=1
  if(length(x)<k)return(x);
  vresl<-x[1:k]
  return(vresl) 
}

#(c)
primero<-function(x,k){
  if(k!=NA || k<1) k=1
  if(length(x)<k){
    x<-c(x,rep(NA,k-length(x)))
    return(x)
  }
  
  vresl<-x[1:k]
  return(vresl) 
}

ultimo<-function(x,k){
  x<-rev(x)
  if(k!=NA || k<1) k=1
  if(length(x)<k){
    x<-c(x,rep(NA,k-length(x)))
    return(x)
  }
  vresl<-x[1:k]
  return(vresl) 
}

