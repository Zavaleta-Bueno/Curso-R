# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta7: Funciones de cuantiles


#muestra
x<-8888
tas<-rnorm(x,0,1)
quantile(tas,0.95)
#funcion para calcular el cuantil: 
cuantiles<-function(muestras,cuantil){
  ordenado<-sort(muestras)
  tam<-length(muestras)
  posicion<-as.integer(tam*cuantil)

  return(ordenado[posicion])
}


#funcion base de R
cuantiles(tas,0.95)

cat("Cuando mas grande es el tamaño de la muestra menor es la diferenciade resultados")