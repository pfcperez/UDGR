set.seed(1)
xv=runif(200, min=10,max=20)
#Función que muestras estádisticos básicos
EstBas <- function(x)
{Est=c('Media','Mediana','Varianza','DesvEsta')
Val=c(mean(x),median(x),var(x),sd(x))
data.frame(Est,Val)
}

