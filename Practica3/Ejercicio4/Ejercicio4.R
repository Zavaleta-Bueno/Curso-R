# Nombre: Zavaleta Bueno Romel 20120236F
# Respuesta4: items


# (a)

f1<- function(x={ y <- 1;2}, y=0){
  x+y
  
}
f1()
# Como la funcion no retorna un valor explicito ,
# esta retornara por defecto el valor de la ultima evalucion de exporesion que exista('x+y')

#(b)

trims<- c(0,0.1,0.2,0.5)
x<-rcauchy(100)
x

lapply(trims, function(trim) mean(x,trim=trim))
lapply(trims, mean, x=x)

# lapply opera funciones utilizando datos de  listas, en este caso hace uso de trims
# trims son los parametros trim de la funcion mean que utilizamos en lapply
# sobre el la distribucion 'x'.
# En el segundo uso de lapply podemos poner defrente 'mean' pues es una funcion que reconoce R.


# (c)
x<- matrix(1:12, nrow = 4 )
x
var<-{0}
for( i in 1:dim(x)[1]){
  for(j in 1: dim(x)[2]){
    if(x[i,j]!=NA && x[i,j]>0)
      
  }
  
}


apply(x,1,function(y)    )


# (d)




