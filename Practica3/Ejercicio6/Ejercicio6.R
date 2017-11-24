#Nombre: Zavaleta Bueno Romel 20120236F
#Respuesta6: Conjuto de datos 'iris'


#¿Como esta estrucutrado iris?
help("iris")
#Pedemos leer la informacion con la 'ayuda' , 
# Es un data frame 
# Con 150 casos(filas) y 5 variables(columnas) llamadas :
#Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, y Species.


#resultado de summary
summary(iris)
#Nos menciona los cuantiles de las variables
#Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, y Species.


#Son los mismos valores
summary(iris[,1]) 
quantile(iris$Sepal.Length)




