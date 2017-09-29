# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta2 : El codigo contiene operacion sobre un vector para intercambiar el signo de sus componentes si son pares,
#Calculos los 100 primeros factoriales sobre un vector y calcular las 100 primeras potencias de 2.


#
vector<-c(1:100)

for(i in 1:length(vector)) 
  if(vector[i]%%2==0) vector[i]=vector[i]*-1


vector
#
vector<-cumprod(1:100)
vector
#


for(i in 1:100){
  vector[i]=2^i
}

vector

