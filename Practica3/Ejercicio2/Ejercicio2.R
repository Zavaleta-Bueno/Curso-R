#Nombre: Zavaleta Bueno Romel 20120236F
#Respuesta2: Corregir errores

help("mtcars")

head(mtcars)

#(a)
a<-mtcars[-1:4,]
a
#El primer termine entre corchete nos especifica las fila a mostrar del df, solo permite colocar valores del mismo signo 
a<-mtcars[1:4,]
a


b<-subset(mtcars[mtcars$cyl])
b








#(b)
x<-1:5
x[NA]
#Cuando operamos bajo valores NA nos producira valores NA, el vector 'x' 
#fue defino antes con 5 datos por los que operamos 5 veces con NA


