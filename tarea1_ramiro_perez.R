set.seed(1)
xv=runif(200, min=10,max=20)
#Función que muestras estádisticos básicos
EstBas <- function(x)
{Est=c('Media','Mediana','Varianza','DesvEsta','Rango','Cuartil 1','Cuartil 3')
Val=c(mean(x),median(x),var(x),sd(x),max(x)-min(x),quantile(x,.25),quantile(x,.75))
data.frame(Est,Val)


}
EstBas(xv)
hist(xv,col = rainbow(5),nclass=5)
