
l=1/4
average = 1/l
std.dv = (sqrt(1/l^2))
#probabilidad de que x<1.3
x5= 1.3
dexp(x5, l)
pexp(x5,l)
#probabilidad de que 1.<x<8
x2= 1
x3=8
dexp(x2,l)-dexp(x3,l)
pexp(x3,l)-pexp(x2,l)

#probabilidad de que 
x4=4
dexp(x4,l)
pexp(x4,l)


par(mfrow=c(2,2))
x=1.3
dexp(x,l)
curve(dexp(x,l),-10,10,type="l",xlab="k",ylab="P(X=k)",main="Funci?n de Probabilidad N(m=1.67,sd=0.15)")
#curve(dbinom(0:12,12,0.52),main="Densidad N(m=1.67,sd=0.15)")
curve(pexp(x,l),-4,4,main="FDA de N(m=1.67,sd=0.15)")
curve(qnorm(x,m,sd),main="Funci?n cuantil N(m=1.67,sd=0.15)")




#par(mfrow=c(2,2))
#x= dexp(x5, l)
#x
#curve(dexp(x,l),0,10,type="l",main="Dexp x=1.3")

#x= dexp(x2,l)-dexp(x3,l)
#x
#curve(dexp(x,l),0,10,main="1.<x<8")

#x=dexp(x4,l)
#x
#curve(dexp(x,l),0,10,main="x>4")

