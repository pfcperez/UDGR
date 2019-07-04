#Distribuci?n Normal es N(media=0, ds=1)
m=0
sd=1


#probabilidad de que x<1.6
pnorm(1.6,m,sd)

#probabilidad de que x>1.5
1-pnorm(1.5,m,sd)

#probabilidad de que 1.65<x<1.75
pnorm(1.75,m,sd)-pnorm(1.65,m,sd)

#cuantiles
qnorm(c(0.05,0.5,0.9),m,sd)

#Densidad, FDA, funci?n cuantil y histograma
# de 10000 valores generados de Bin(10,15)
#set.seed(1)
par(mfrow=c(2,2))
curve(dnorm(x,m,sd),-4,4,type="l",xlab="k",ylab="P(X=k)",main="Funci?n de Probabilidad N(m=1.67,sd=0.15)")
#curve(dbinom(0:12,12,0.52),main="Densidad N(m=1.67,sd=0.15)")
curve(pnorm(x,m,sd),-4,4,main="FDA de N(m=1.67,sd=0.15)")
curve(qnorm(x,m,sd),main="Funci?n cuantil N(m=1.67,sd=0.15)")
hist(rnorm(1e2,m,sd),main="Histograma de 1e4 valores \n aletorios de N(m=1.67,sd=0.15)")

X=rnorm(1e2,m,sd)
hist(X,freq=FALSE,col="lightsalmon",main="Histograma",sub="Datos simulados de una N(1.75,0.15)")
curve(dnorm(x,m,sd),xlim=c(-3,3),col="blue",lwd=2,add=TRUE)
