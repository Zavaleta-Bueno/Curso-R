#3
# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta3 : El codigo contiene a)ejemplos sobre la equivalencia de match(a,x) y min(which(x==a))
# b) comparacion de tiempos de ejecucion  y c) funcion para cantidad de letras

#a
help("which")
help("match") #mas eficiente
#Ejemplos

a=4
x<-c(1,4,5,6)

#Retorna 2 pues 4 esta en esa posicion
match(a,x)
min(which(x==a))

a=3
#NA o Inf pues no esta en el vector x
match(a,x)
min(which(x==a))

#b
help("system.time")
y=c()
#El primero es el menos eficiente
system.time(for(t in 1:100)  y[t]=exp(t))
system.time(exp(1:100))
system.time(sapply(1:100, exp))


#c







