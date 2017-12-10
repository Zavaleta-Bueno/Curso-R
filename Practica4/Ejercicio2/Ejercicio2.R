# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta2: Generar probabilidades para un conjunto de datos


library(MASS)
datos=readLines("/home/ayayitox/Entrada_problema_1.txt")
T_valor<-as.integer(datos[1])
T_valor
datos<-datos[-1]
restriccion_T<-10^5
if (T_valor>restriccion_T) {stop("El valor de T es superior a la restriccion")}
datos_columnas<-matrix(datos,nrow=2)
#valores de N y K
valores_N_K<-datos_columnas[1,]
matriz_N_K<-matrix(unlist(strsplit(valores_T_K,split = " ")),nrow = 2)
#filtar valores de N y convertir a numericos
valores_N<-matriz_N_K[1,]
valores_N<-as.integer(valores_N)
if(max(valores_N)>restriccion_T){stop("El valor de N es superior a la restriccion")}
#filtar vaolres de K y convertir a numericos
valores_K<-matriz_N_K[2,]
valores_K<-as.integer(valores_K)
#restriccion de K < N
indices_validos<-which(valores_K<=valores_N)
indices_validos

#combinaciones 
valores_cadena<-matrix(datos_columnas[2,],ncol = 1) 
v_c<-as.vector(valores_cadena)

#filtrando los valores validos
K_validos<-valores_K[indices_validos]
N_validos<-valores_N[indices_validos]
cadenas_validas<-v_c[indices_validos]

#prueba para los 120 primeros valores 
indices_prueba<-c(1:120)
primeros_K<-K_validos[indices_prueba]
primeros_N<-N_validos[indices_prueba]
primeros_cadenas<-cadenas_validas[indices_prueba]

#Calculando los casos favorables
probabilidad<-function(vector,k){
  #comprobando i-j<k
  secuencia<-c(1:length(vector))
  
  #para casos especiales donde el tamaño del vector es 1
  if(length(vector)==1){
    if(vector[1]==0) return(0)
    return(1) 
  }
  
  combo<-combn(secuencia,2) 
  aux1 <-c(combo[1,],combo[2,],vector)
  aux2 <-c(c(combo[2,],combo[1,],vector))
  aux_abs<-abs(aux1-aux2)
  index<-which(aux_abs<=k)
  aux1<-aux1[index]
  aux2<-aux2[index]
  
  #comprobando si=sj=1
  si<-vector[aux1]
  sj<-vector[aux2]
  resl<-si+sj
  fin<-resl[resl==2]
  return(length(fin))
  
}



#Funcion que calcula las probabilidades en un vector
probabilidades<-function(vectorN,vectorK,listaCombinacion){
  
  tam<-length(vectorN)
  a_vector<-vector('integer')
  b_vector<-vector('integer')
  combinaciones<-sapply(listaCombinacion,function(x) as.integer(unlist(strsplit(x,split = ""))))
  
  
  for(i in 1:tam){
    aux_vector<-unlist(combinaciones[i])
    v_v<-probabilidad(aux_vector,vectorK[i])
    a_vector<-c(a_vector,v_v)
    b_vector<-c(b_vector,vectorN[i]^2)
  }
  
  return(a_vector/b_vector)
}





#probabilidades(primeros_N,primeros_K,primeros_cadenas)


vector_resultado<-probabilidades(N_validos,K_validos,cadenas_validas)
fractions(vector_resultado)








