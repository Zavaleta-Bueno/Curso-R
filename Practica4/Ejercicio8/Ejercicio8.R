# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta8: Numero de combinacion de monedas



#El documento no contenia la fila para cantidades
#El filtrado de informacion se puede hacer similar al ejercicio 2


#Funcion para encontrar la cantidad de combinaciones de monedas
#n es el valor 
#a cantidad de 1
#b cantidad de 2
#c cantidad de 5
#d cantidad de 10

descomposicion<-function(n,a,b,c,d){
  cantidad<-0  
  aux_d<-n
  
  for(i in 0:d){
    aux_c<-aux_d-10*i;
    
    cat("c ",aux_c,"\n")
    for(j in 0:c){
      aux_b<-aux_c-5*j
      cat("b ",aux_b,"\n")
      
      for(k in 0:b){
        aux_a<-aux_b-2*k
        cat("a ",aux_a,"\n")
        
        if(0<=aux_a && aux_a<=a) cantidad<-cantidad+1
      }
    }
    
  }
  
  return(cantidad)
  
}


#Ejemplos de la asignacion
descomposicion(15,2,3,1,1)
descomposicion(12,2,2,1,1)


