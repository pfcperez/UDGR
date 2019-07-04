
l=1/4
average = 1/l
std.dv = (sqrt(1/l^2))
#probabilidad de que x<1.3
x5= 1.3
dexp(x5, l)
#probabilidad de que 1.<x<8
x2= 1
x3=8
dexp(x2,l)-dexp(x3,l)

#probabilidad de que 
x4=4
dexp(x4,l)

par(mfrow=c(2,2))
x= dexp(x5, l)
x
curve(dexp(x,l),0,10,type="l",main="Dexp x=1.3")

x= dexp(x2,l)-dexp(x3,l)
x
curve(dexp(x,l),0,10,main="1.<x<8")

x=dexp(x4,l)
x
curve(dexp(x,l),0,10,main="x>4")

