#Simulación del teorema del límite central
#con valores que tienen una distribución gamma con paremetro en theta

beta = 4
alpha = 3
n=500
M=1e5
#vectores sin elementos
xm_v=rep(NA,M)
zn_v=rep(NA,M)

for(i in 1:M)
{xv=rgamma(n,alpha,1/beta)
xm_v[i]=mean(xv)
zn_v[i]=sqrt(n)*(mean(xv)-alpha*beta)/(sqrt(alpha)*beta)
}
par(mfrow=c(2,1))
hist(zn_v,prob=TRUE,breaks=100,col=2)
curve(dnorm(x),add=TRUE)
hist(xm_v,breaks = 100,col = "lightblue")

#P(10<Xm<13)Estandarizacion de los valores
b=13
a=10
zb=(b-alpha*beta)*sqrt(n)/(sqrt(alpha)*beta)
zb
za=(a-alpha*beta)*sqrt(n)/(sqrt(alpha)*beta)
za
mean(a<xm_v&xm_v<b)
mean(za<zn_v&zn_v<zb)
#Probabilidad con la normla estandar
pnorm(zb)-pnorm(za)