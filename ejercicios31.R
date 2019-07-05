#Simulación del teorema del límite central
#con valores que tienen una distribución exponencial con paremetro en theta
theta=8
n=500
M=1e5
#vectores sin elementos
xm_v=rep(NA,M)
zn_v=rep(NA,M)
for(i in 1:M)
{xv=rexp(n,1/theta)
xm_v[i]=mean(xv)
zn_v[i]=sqrt(n)*mean(xv)-theta/theta
}
par(mfrow=c(2,1))
hist(zn_v,prob=TRUE,breaks=100)
curve(dnorm(x),add=TRUE)
hist(xm_v)

#P(7.4<Xm<9.1) Estandarizacion de los valores
b=9.1
a=7.4
zb=(b-theta)*sqrt(n)/theta
zb
za=(a-theta)*sqrt(n)/theta
za
mean(a<xm_v&xm_v<b)
mean(za<zn_v&zn_v<zb)
#Probabilidad con la normla estandar
pnorm(zb)-pnorm(za)