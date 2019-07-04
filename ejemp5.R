#Distribuci?n Normal es N(media=1.67, ds=0.15)
m=1.67
sd=0.15


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
curve(dnorm(x,m,0.15),1,2.6,type="l",xlab="k",ylab="P(X=k)",main="Funci?n de Probabilidad N(m=1.67,sd=0.15)")
#curve(dbinom(0:12,12,0.52),main="Densidad N(m=1.67,sd=0.15)")
curve(pnorm(x,m,0.15),0.5,2,main="FDA de N(m=1.67,sd=0.15)")
curve(qnorm(x,m,0.15),main="Funci?n cuantil N(m=1.67,sd=0.15)")
hist(rnorm(1e4,m,0.15),main="Histograma de 1e4 valores \n aletorios de N(m=1.67,sd=0.15)")

X=rnorm(1e3,m,0.15)
hist(X,freq=FALSE,col="lightsalmon",main="Histograma",sub="Datos simulados de una N(1.75,0.15)")
curve(dnorm(x,m,0.15),xlim=c(1.2,2.20),col="blue",lwd=2,add=TRUE)
