# Nombre : Zavaleta Bueno Romel 20120236F
# Respuesta3: calculo de PMF y CDF de una distribucion de poison en un looṕ

F.rand <- function(lambda) {
    u <- runif(1)
    x <- 0
    p.x <-exp(-lambda)
    F.x <-p.x
    while (F.x < u) {
          x <- x + 1
          p.x<-p.x*lambda/(x+1)
          F.x <-F.x+p.x
          }
    return(x)
}

