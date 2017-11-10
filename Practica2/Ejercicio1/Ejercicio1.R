#Nombre : Zavaleta Bueno Romel Rolando 20120236F
#Respuesta 1 : El codigo muestra las diferentes formas de definir una funcion y mide los tiempos


#(a)
funA<-function(n){
  a=0
   
  for(i in 1:n){
    
    for(s in 1:i){
      a=a+s^2/(10+4*i^3)
    }
  }
  
  return(a) 
}


x=funA(3)
x


#(b)

funB<-function(n){
  
  a<-matrix<-()
  
  
} 




help("outer")
