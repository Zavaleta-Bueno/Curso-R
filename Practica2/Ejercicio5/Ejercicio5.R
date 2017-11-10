#Nombre : Zavaleta Bueno Romel Rolando 20120236F
#Respuesta 5: El codigo de la matriz y operaciones sobre sus columnas y filas

aMat<-matrix(sample(10,size=60,replace=T),nr=6)
aMat


#(a)
apply(aMat,1,function(x) sum(as.integer(x>4)))

#(b)
apply(aMat,1,function(x) which(x==7))

#(c)



help("apply")


