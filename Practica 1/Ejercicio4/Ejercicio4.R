# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta4 : Contiene la funcion tst4() y Tst4()

tst4<-function(x){
    
  if(x<2) "muy negativo"
  else if(x<1) "cercano a cero"
  else if(x<3) "in [1,3)"
  else "large"  
}



#a

tst4(0)

tst4(Inf)

tst4(2)

#b
Tst4<-function(x){
  

  ifelse(x<2,"muy negativo",ifelse(x<1,"cercano a cero",ifelse(x<3,"in [1,3)","large"))) 
  
}

s<-c(Inf,3:5)

pa<-c(0,Inf,2)

Tst4(s)
Tst4(pa)






