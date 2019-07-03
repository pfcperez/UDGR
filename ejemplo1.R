#Operaciones básicas 
#Escalares
a=40
#matrices
A=matrix(1:6,nc=2,nr=3)
A
#vectores
v1 = seq(1,4,0.1)
v1
v2=c(1,2,3,4)
v3=c(-1,-2,1,1)
v4=c(0,1,0,1)
v=cbind(v2,v3,v4)
vf = rbind(v2,v3,v4)
vf
vf[1:3,3]
vf[1:2,3:4]
vf[3,]

#operaciones básicas con matrices
vf+vf
vf+v3
vf*vf
vf
b1=c(1,2,3)
b2=c(4,-2,1)
B=rbind(b1,b2)
c1=c(2,-2,1)
c=t(c1)
#Multiplicación definida para matrices
B%*%c1
#Sumas de elementos en la matriz
sumaB=sum(B)
#Suma por columnas
sumac = colSums(B)
sumaf = rowSums(B)

#para generar numeros aleatorios se necesitan la media y desviacion estandard
set.seed(1)
aleatorio<-rnorm(100,mean=1,sd=2)

#Generar una matriz de 10x10
matriz = matrix(aleatorio,nc=10,nr=10)
